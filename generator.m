% [y,Fs] = audioread('Office.mp3');
% d=dir;

% 0 cough
% Record=[];
% for i=1:10000
%   x=floor(rand()*100000000);
%   y1=y(x:x+10*Fs-1,:);
%   filename = '/home/sili/Documents/youtubedata/Cough_Sound';
%   n=floor(rand()*881)+1;
%   filename = [filename '/' d(n).name];
%   folder='/home/sili/Documents/youtubedata/data/0cough/'
%   name=[num2str(i) '.wav']
%   Record(i).name=name;
%   Record(i).folder=folder;
%   Record(i).coughcount=0;
%   Record(i).coughlength=0;
%   Record(i).coughstart=0;
%   filename=[folder name];
%   audiowrite(filename,y1,Fs);
% end


% % 1 cough
% Record=[];
% for i=1:10000
%   x=floor(rand()*100000000);
%   y1=y(x:x+10*Fs-1,:);
%   for k=1:1
%   
%   filename = '/home/sili/Documents/youtubedata/Cough_Sound';
%   n=floor(rand()*881)+1;
%   filename = [filename '/' d(n).name];
%   yy=[];
%   [yy,Fs] = audioread(filename);
%   yy=yy(:,1);
%   n=floor(rand()*(160000-length(yy)));
%   y1(n:n+length(yy)-1,1)=y1(n:n+length(yy)-1,1)+yy;
%   y1(n:n+length(yy)-1,2)=y1(n:n+length(yy)-1,2)+yy;
%   Record(i).coughlength(k)=length(yy);
%   Record(i).coughstart(k)=n;
%   end
%   folder='/home/sili/Documents/youtubedata/data/1cough/'
%   name=[num2str(i) '.wav']
%   Record(i).name=name;
%   Record(i).folder=folder;
%   Record(i).coughcount=1;
%   filename=[folder name];
%   audiowrite(filename,y1,Fs);
% end

% % 2 cough
% Record=[];
% for i=1:10000
%   x=floor(rand()*100000000);
%   y1=y(x:x+10*Fs-1,:);
%   for k=1:2
%   
%   filename = '/home/sili/Documents/youtubedata/Cough_Sound';
%   n=floor(rand()*881)+1;
%   filename = [filename '/' d(n).name];
%   yy=[];
%   [yy,Fs] = audioread(filename);
%   yy=yy(:,1);
%   n=floor(rand()*(160000-length(yy)));
%   y1(n:n+length(yy)-1,1)=y1(n:n+length(yy)-1,1)+yy;
%   y1(n:n+length(yy)-1,2)=y1(n:n+length(yy)-1,2)+yy;
%   Record(i).coughlength(k)=length(yy);
%   Record(i).coughstart(k)=n;
%   end
%   folder='/home/sili/Documents/youtubedata/data/2cough/'
%   name=[num2str(i) '.wav']
%   Record(i).name=name;
%   Record(i).folder=folder;
%   Record(i).coughcount=1;
%   filename=[folder name];
%   audiowrite(filename,y1,Fs);
% end

% 3 cough
Record=[];
for i=1:10000
  x=floor(rand()*100000000);
  y1=y(x:x+10*Fs-1,:);
  for k=1:5
  
  filename = '/home/sili/Documents/youtubedata/Cough_Sound';
  n=floor(rand()*881)+1;
  filename = [filename '/' d(n).name];
  yy=[];
  [yy,Fs] = audioread(filename);
  yy=yy(:,1);
  n=floor(rand()*(160000-length(yy)))+1;
  y1(n:n+length(yy)-1,1)=y1(n:n+length(yy)-1,1)+yy;
  y1(n:n+length(yy)-1,2)=y1(n:n+length(yy)-1,2)+yy;
  Record(i).coughlength(k)=length(yy);
  Record(i).coughstart(k)=n;
  end
  folder='/home/sili/Documents/youtubedata/data/5cough/'
  name=[num2str(i) '.wav']
  Record(i).name=name;
  Record(i).folder=folder;
  Record(i).coughcount=1;
  filename=[folder name];
  audiowrite(filename,y1,Fs);
end
