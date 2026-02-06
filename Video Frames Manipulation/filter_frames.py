import os, shutil, cv2
from PIL import Image

backup_folder = r"Video Frames Manipulation/frames_backup"
working_folder = r"Video Frames Manipulation/frames_filtered"

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

for file in returnContents(working_folder):
    os.remove(f"{working_folder}/{file}")

os.remove("bad_apple.mp4")

# Video and Frames Configuration
generate_video = False
framerate = 5
width = 100
height = 75
fourcc = cv2.VideoWriter_fourcc(*'mp4v')
output_video = cv2.VideoWriter("bad_apple.mp4", fourcc, framerate, (width,height))


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

folder_size = 0
for file in returnContents(working_folder):
    size = os.path.getsize(f"{working_folder}/{file}")
    folder_size += size

total_frames = len(returnContents(working_folder))
print(f"Folder Size : {folder_size / 1024 / 1024 :.2f} MB")
print(f"Total Frames: {len(returnContents(working_folder))}")
print(f"Number of .fnt files: {(total_frames // 200 ) + 1}")

#Transform Result Frames into .fnt file (for Garmin Handling)






        




