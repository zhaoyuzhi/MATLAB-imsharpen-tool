function [ files ] = scanDir( root_dir )
files={};
if root_dir(end)~='/'
 root_dir=[root_dir,'/'];
end
fileList=dir(root_dir);  %��չ��
n=length(fileList);
cntpic=0;
for i=1:n
    if strcmp(fileList(i).name,'.')==1||strcmp(fileList(i).name,'..')==1
        continue;
    else
        fileList(i).name
        if ~fileList(i).isdir
            
            full_name=[root_dir,fileList(i).name];
            
%              [pathstr,name,ext,versn]=fileparts(full_name);
%              if strcmp(ext,'.jpg')
                 cntpic=cntpic+1;
                 files(cntpic)={full_name};
%              end
        else
            files=[files,scanDir([root_dir,fileList(i).name])];
        end
    end
end
end
