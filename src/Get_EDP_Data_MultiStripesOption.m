function [EDP_Data,MaxSDR,MaxPFA,MaxVRD]=Get_EDP_Data_MultiStripesOption(NRHADataFilePath,NRHADataExcelFileName,Data_Status,N_GM,nStripe)

cd (NRHADataFilePath);

% Read EDP data from Excel
for i=1:nStripe
                                     xx = xlsread(NRHADataExcelFileName,['SDR_',num2str(i)]     ,'B3:EZ300'); evalc(['EDP_Data.SDR.S',     num2str(i),'=xx']); evalc(['EDP_Data.SDRmedian.S',     num2str(i),'=median(EDP_Data.SDR.S',     num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.SDRsigma.S',     num2str(i),'=std(log(EDP_Data.SDR.S',     num2str(i),'(1:N_GM,:)))']);   
                                     xx = xlsread(NRHADataExcelFileName,['PFA_',num2str(i)]     ,'B3:EZ300'); evalc(['EDP_Data.PFA.S',     num2str(i),'=xx']); evalc(['EDP_Data.PFAmedian.S',     num2str(i),'=median(EDP_Data.PFA.S',     num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.PFAsigma.S',     num2str(i),'=std(log(EDP_Data.PFA.S',     num2str(i),'(1:N_GM,:)))']);   
    if Data_Status.RDR==1;           xx = xlsread(NRHADataExcelFileName,['RDR_',num2str(i)]     ,'B3:B300');  evalc(['EDP_Data.RDR.S',     num2str(i),'=xx']); evalc(['EDP_Data.RDRmedian.S',     num2str(i),'=median(EDP_Data.RDR.S',     num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.RDRsigma.S',     num2str(i),'=std(log(EDP_Data.RDR.S',     num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.VRD==1;           xx = xlsread(NRHADataExcelFileName,['VRD_',num2str(i)]     ,'B3:B300');  evalc(['EDP_Data.VRD.S',     num2str(i),'=xx']); evalc(['EDP_Data.VRDmedian.S',     num2str(i),'=median(EDP_Data.VRD.S',     num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.VRDsigma.S',     num2str(i),'=std(log(EDP_Data.VRD.S',     num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.LINKROT==1;       xx = xlsread(NRHADataExcelFileName,['LINK ROT_',num2str(i)],'B3:EZ300'); evalc(['EDP_Data.LINKROT.S', num2str(i),'=xx']); evalc(['EDP_Data.LINKROTmedian.S', num2str(i),'=median(EDP_Data.LINKROT.S', num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.LINKROTsigma.S', num2str(i),'=std(log(EDP_Data.LINKROT.S', num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.COLROT==1;        xx = xlsread(NRHADataExcelFileName,['COL ROT_', num2str(i)],'B3:EZ300'); evalc(['EDP_Data.COLROT.S',  num2str(i),'=xx']); evalc(['EDP_Data.COLROTmedian.S',  num2str(i),'=median(EDP_Data.COLROT.S',  num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.COLROTsigma.S',  num2str(i),'=std(log(EDP_Data.COLROT.S',  num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.BEAMROT==1;       xx = xlsread(NRHADataExcelFileName,['BEAM ROT_',num2str(i)],'B3:EZ300'); evalc(['EDP_Data.BEAMROT.S', num2str(i),'=xx']); evalc(['EDP_Data.BEAMROTmedian.S', num2str(i),'=median(EDP_Data.BEAMROT.S', num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.BEAMROTsigma.S', num2str(i),'=std(log(EDP_Data.BEAMROT.S', num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.DWD==1;           xx = xlsread(NRHADataExcelFileName,['DWD_',  num2str(i)],   'B3:EZ300'); evalc(['EDP_Data.DWD.S',     num2str(i),'=xx']); evalc(['EDP_Data.DWDmedian.S',     num2str(i),'=median(EDP_Data.DWD.S',     num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.DWDsigma.S',     num2str(i),'=std(log(EDP_Data.DWD.S',     num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.RD==1;            xx = xlsread(NRHADataExcelFileName,['RD_',   num2str(i)],   'B3:EZ300'); evalc(['EDP_Data.RD.S',      num2str(i),'=xx']); evalc(['EDP_Data.RDmedian.S',      num2str(i),'=median(EDP_Data.RD.S',      num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.RDsigma.S',      num2str(i),'=std(log(EDP_Data.RD.S',      num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.GENS1==1;         xx = xlsread(NRHADataExcelFileName,['GENS1_',num2str(i)],   'B3:EZ300'); evalc(['EDP_Data.GENS1.S',   num2str(i),'=xx']); evalc(['EDP_Data.GENS1median.S',   num2str(i),'=median(EDP_Data.GENS1.S',   num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.GENS1sigma.S',   num2str(i),'=std(log(EDP_Data.GENS1.S',   num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.GENS2==1;         xx = xlsread(NRHADataExcelFileName,['GENS2_',num2str(i)],   'B3:EZ300'); evalc(['EDP_Data.GENS2.S',   num2str(i),'=xx']); evalc(['EDP_Data.GENS2median.S',   num2str(i),'=median(EDP_Data.GENS2.S',   num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.GENS2sigma.S',   num2str(i),'=std(log(EDP_Data.GENS2.S',   num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.GENS3==1;         xx = xlsread(NRHADataExcelFileName,['GENS3_',num2str(i)],   'B3:EZ300'); evalc(['EDP_Data.GENS3.S',   num2str(i),'=xx']); evalc(['EDP_Data.GENS3median.S',   num2str(i),'=median(EDP_Data.GENS3.S',   num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.GENS3sigma.S',   num2str(i),'=std(log(EDP_Data.GENS3.S',   num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.GENF1==1;         xx = xlsread(NRHADataExcelFileName,['GENF1_',num2str(i)],   'B3:EZ300'); evalc(['EDP_Data.GENF1.S',   num2str(i),'=xx']); evalc(['EDP_Data.GENF1median.S',   num2str(i),'=median(EDP_Data.GENF1.S',   num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.GENF1sigma.S',   num2str(i),'=std(log(EDP_Data.GENF1.S',   num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.GENF2==1;         xx = xlsread(NRHADataExcelFileName,['GENF2_',num2str(i)],   'B3:EZ300'); evalc(['EDP_Data.GENF2.S',   num2str(i),'=xx']); evalc(['EDP_Data.GENF2median.S',   num2str(i),'=median(EDP_Data.GENF2.S',   num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.GENF2sigma.S',   num2str(i),'=std(log(EDP_Data.GENF2.S',   num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.GENF3==1;         xx = xlsread(NRHADataExcelFileName,['GENF3_',num2str(i)],   'B3:EZ300'); evalc(['EDP_Data.GENF3.S',   num2str(i),'=xx']); evalc(['EDP_Data.GENF3median.S',   num2str(i),'=median(EDP_Data.GENF3.S',   num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.GENF3sigma.S',   num2str(i),'=std(log(EDP_Data.GENF3.S',   num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.PFV==1;           xx = xlsread(NRHADataExcelFileName,['PFV_',  num2str(i)],   'B3:EZ300'); evalc(['EDP_Data.PFV.S',     num2str(i),'=xx']); evalc(['EDP_Data.PFVmedian.S',     num2str(i),'=median(EDP_Data.PFV.S',     num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.PFVsigma.S',     num2str(i),'=std(log(EDP_Data.PFV.S',     num2str(i),'(1:N_GM,:)))']);    end
    if Data_Status.ED==1;            xx = xlsread(NRHADataExcelFileName,['ED_',   num2str(i)],   'B3:EZ300'); evalc(['EDP_Data.ED.S',      num2str(i),'=xx']); evalc(['EDP_Data.EDmedian.S',      num2str(i),'=median(EDP_Data.ED.S',      num2str(i),'(1:N_GM,:))']); evalc(['EDP_Data.EDsigma.S',      num2str(i),'=std(log(EDP_Data.ED.S',      num2str(i),'(1:N_GM,:)))']);    end
end


evalc(['MaxSDR=max(max(EDP_Data.SDRmedian.S',num2str(nStripe),'))']);
evalc(['MaxPFA=max(max(EDP_Data.PFAmedian.S',num2str(nStripe),'))']);
MaxVRD=0;
if Data_Status.VRD==1
    evalc(['MaxVRD=max(max(EDP_Data.VRDmedian.S',num2str(nStripe),'))']);
end

end