local self = tbACuong

local tbACuong = Ui.tbACuong or {}
Ui.tbACuong = tbACuong
me.Msg("test test ACuong")

local idKhoanLv7 = 722
local idKhoanLv8 = 723
local idThachLv1 = 726
local idThachLv2 = 727
local idThachLv3 = 728
local idThachLv4 = 729
local idThachLv5 = 730
local idThachLv6 = 731
local idThachLv7 = 732

local szCmd = [=[
	"Ui.tbACuong:BuyNL();
]=];

local uiSayPanel =  Ui(Ui.UI_SAYPANEL)
function tbACuong:Test()
    me.Msg("test ACuong ACuong")
end

function tbACuong:BuyHLTieu()
    tbACuong:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

function tbACuong:BuyHLTrung()
    tbACuong:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

function tbACuong:BuyHLDai()
    tbACuong:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

function tbACuong:BuyTLTieu()
    tbACuong:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

function tbACuong:BuyTLTrung()
    tbACuong:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

function tbACuong:BuyTLDai()
    tbACuong:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 7);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end

-------------------Gia Nhap Mon Phai--------------------
function tbACuong:GiaNhapMN()
    tbACuong:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 8);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end
function tbACuong:GiaNhapTT()
    tbACuong:TuiTanThu()
    uiSayPanel:OnListSel("LstSelectArray", 2);
    uiSayPanel:OnListSel("LstSelectArray", 3);
    uiSayPanel:OnListSel("LstSelectArray", 1);
    local function myclose()
        UiManager:CloseWindow(Ui.UI_SAYPANEL);
        return 0;
    end
    Ui.tbLogic.tbTimer:Register(10, myclose);
    return 0
end
--------------------TuiTanThu---------------------------
function tbACuong:TuiTanThu()
    local tbFind = me.FindItemInBags(18,1,351,1);
	for j, tbItem in pairs(tbFind) do
	    me.UseItem(tbItem.pItem);
	end
    
end

function tbACuong:BuyNL()
    Map.tbSuperMapLink:StartGoto({szType = "npcpos", szLink = ",5,3565,3"})
    local bOK, szMsg = me.ShopBuyItem(idThachLv1, 42);
    local bOK, szMsg = me.ShopBuyItem(idThachLv2, 67);
    local bOK, szMsg = me.ShopBuyItem(idThachLv3, 63);
    local bOK, szMsg = me.ShopBuyItem(idThachLv4, 50);
    local bOK, szMsg = me.ShopBuyItem(idThachLv5, 28);
    local bOK, szMsg = me.ShopBuyItem(idThachLv6, 18);
    local bOK, szMsg = me.ShopBuyItem(idThachLv7, 12);
    local bOK, szMsg = me.ShopBuyItem(idKhoanLv7, 10);
    local bOK, szMsg = me.ShopBuyItem(idKhoanLv8, 10);
end

local tCmd={"Ui.tbACuong:BuyNL();", "BuyNL", "", "Alt+R", "Alt+R", "BuyNL"};
	AddCommand(tCmd[4], tCmd[3], tCmd[2], tCmd[7] or UiShortcutAlias.emKSTATE_INGAME);
	UiShortcutAlias:AddAlias(tCmd[2], tCmd[1]);