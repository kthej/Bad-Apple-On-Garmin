import os, shutil, cv2
from PIL import Image

backup_folder = "Video Frames Manipulation/frames_backup"
working_folder = "Video Frames Manipulation/frames_filtered"

generate_frames = False
generate_video = False
generate_specs = True

#Function to return paths of all files in a folder

def returnContents(folder):
    raw_list = []
    file_list =[]

    for file in os.walk(folder):
        raw_list.append(file)

    file_list = raw_list[0][2]
    file_list.sort()
    return file_list


# Remove and Clear working folder to prepare for file addition





# Video and Frames Configuration

framerate = 5
width = 100
height = 75
fourcc = cv2.VideoWriter_fourcc(*'mp4v')
output_video = cv2.VideoWriter("Video Frames Manipulation/rendered_videos/bad_apple.mp4", fourcc, framerate, (width,height))

if generate_frames == True:
    for file in returnContents(working_folder):
        os.remove(f"{working_folder}/{file}")

    loop_count = 0
    for file in returnContents(backup_folder):

        #Copy every 6th frame to reduce from 30fps to 5fps

        if loop_count % (30 / framerate) == 0: 
            
            working_image = Image.open(f"{str(backup_folder)}/{str(file)}")

            # Resize image and make pure black and white

            resized_image = working_image.resize((int(width),int(height)),Image.Resampling.NEAREST).point(lambda p: 255 if p > 125 else 0)
            
            #Save the images to frames_filtered folder
            
            resized_image.save(f"{working_folder}/{file.strip(".jpg")}.png")

            #Add each image frame to video
            if generate_video == True:
                output_video.write(cv2.imread(f"{working_folder}/{file.strip(".jpg")}.png"))

        loop_count += 1

#Calculate Total Folder Size of All Frames (Must be under 1MB)

if generate_specs == True:
    folder_size = 0
    for file in returnContents(working_folder):
        size = os.path.getsize(f"{working_folder}/{file}")
        folder_size += size

    total_frames = len(returnContents(working_folder))
    print(f"Folder Size : {folder_size / 1024 / 1024 :.2f} MB")
    print(f"Total Frames: {len(returnContents(working_folder))}")
    print(f"Number of .fnt files: {(total_frames // 200 ) + 1}")

#Transform Result Frames into .fnt file (for Garmin Handling)


frames_per_font = 50

for file in returnContents("Video Frames Manipulation/fnt_creation"):
        os.remove(f"Video Frames Manipulation/fnt_creation/{file}")

for chapter in range(0, total_frames // frames_per_font):

    current_section_filename =f"Video Frames Manipulation/fnt_creation/section_{chapter}.fnt"
    current_section_file = open(current_section_filename, "a")

    current_section_file.write(f"info face=\"section_{chapter}\" size={height} bold=0 italic=0 charset=\"\" unicode=1 stretchH={width} smooth=1 aa=1 padding=0,0,0,0 spacing=1,1 outline=0\n")
    current_section_file.write(f"common lineHeight={height} base={height} scaleW={width} scaleH={height * frames_per_font} pages=1 packed=0 alphaChnl=1 redChnl=0 greenChnl=0 blueChnl=0\n")
    current_section_file.write(f"page id=0 file=\"section_{chapter}.png\"\n")
    current_section_file.write(f"chars count={frames_per_font}\n")
    
    image_sheet = Image.new("1",(width, height * frames_per_font))

    y_val = 0

    unicode_index = 33

    start_slice = frames_per_font * chapter
    end_slice = frames_per_font * (chapter + 1)

    for file in returnContents(working_folder)[start_slice:end_slice]:
       
        image_sheet.paste(Image.open(f"{working_folder}/{file}"),(0,y_val))
        current_section_file.write(f"char id={unicode_index}   x=0     y={y_val}     width={width}  height={height}  xoffset=0     yoffset=0     xadvance={width}  page=0  chnl=15\n")
        y_val += height
        unicode_index += 1
    
    current_section_file.close()

    image_sheet.save(f"Video Frames Manipulation/fnt_creation/section_{chapter}.png")





        




