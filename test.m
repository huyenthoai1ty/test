data=xlsread('test.xls')
datatk=data(2:89,2:21)
for i = 1:20
    Xi=datatk(:,i)
    Xi=Xi(~isnan(Xi))
    Xmi(:,i)=mean(Xi)
    Xmii(:,i)=min(Xi)
    Xmai(:,i)=max(Xi)
    Xvai(:,i)=var(Xi)
end

figure;
plot(1:20,Xmi,'r','LineWidth',1);
hold on;
plot(1:20,Xmai,'b','LineWidth',1);
plot(1:20,Xmii,'k','LineWidth',1);

title('Biểu đồ thống kê lưu lượng nước');
legend('Giá trị trung bình','Giá trị lớn nhất',...
       'Giá trị nhỏ nhất');
xlabel('Tháng');
ylabel('Lưu lượng nước (m^3/s)');
xlim([1 20]);
xticks(1:20);
grid on;