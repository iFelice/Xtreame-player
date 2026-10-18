package b7;

import android.content.Intent;
import android.view.View;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.MultiScreenActivityEXO;
import pe.hf.black20.ProgramRemindersActivity;
import pe.hf.black20.R;
import pe.hf.black20.RecordsActivity;
import pe.hf.black20.SearchActivity;
import pe.hf.black20.SettingsMenuActivity;
import pe.hf.black20.UsersHistoryActivity;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.util.Methods;
import pe.hf.black20.util.OTRApp;

/* JADX INFO: renamed from: b7.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnClickListenerC0542p implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10373G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ CategoriesActivity f10374H;

    public /* synthetic */ ViewOnClickListenerC0542p(CategoriesActivity categoriesActivity, int i8) {
        this.f10373G = i8;
        this.f10374H = categoriesActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10373G;
        CategoriesActivity categoriesActivity = this.f10374H;
        switch (i8) {
            case 0:
                if (!Methods.N(categoriesActivity.f28389G)) {
                    StringBuilder sb = new StringBuilder();
                    CategoriesActivity categoriesActivity2 = categoriesActivity.f28389G;
                    sb.append(categoriesActivity2.getString(R.string.xc_you_need_to_allow));
                    sb.append(" ");
                    sb.append(OTRApp.f29417G.getString(R.string.app_name));
                    sb.append(" ");
                    sb.append(categoriesActivity2.getString(R.string.xc_alert_write_permission));
                    categoriesActivity.c(sb.toString());
                } else {
                    z4.q0.q().g("ORT_WHICH_CAT", "TV");
                    Intent intent = new Intent(categoriesActivity, (Class<?>) ChannelListActivity.class);
                    categoriesActivity.startActivity(intent);
                    intent.putExtra("forFavorNot", "no");
                    intent.addFlags(67108864);
                    categoriesActivity.startActivity(intent);
                }
                break;
            case 1:
                if (!Methods.N(categoriesActivity.f28389G)) {
                    StringBuilder sb2 = new StringBuilder();
                    CategoriesActivity categoriesActivity3 = categoriesActivity.f28389G;
                    sb2.append(categoriesActivity3.getString(R.string.xc_you_need_to_allow));
                    sb2.append(" ");
                    sb2.append(OTRApp.f29417G.getString(R.string.app_name));
                    sb2.append(" ");
                    sb2.append(categoriesActivity3.getString(R.string.xc_alert_write_permission));
                    categoriesActivity.c(sb2.toString());
                } else {
                    z4.q0.q().g("ORT_WHICH_CAT", "RADIO");
                    Intent intent2 = new Intent(categoriesActivity, (Class<?>) ChannelListActivity.class);
                    categoriesActivity.startActivity(intent2);
                    intent2.putExtra("forFavorNot", "no");
                    intent2.addFlags(67108864);
                    categoriesActivity.startActivity(intent2);
                }
                break;
            case 2:
                if (!Methods.N(categoriesActivity.f28389G)) {
                    StringBuilder sb3 = new StringBuilder();
                    CategoriesActivity categoriesActivity4 = categoriesActivity.f28389G;
                    sb3.append(categoriesActivity4.getString(R.string.xc_you_need_to_allow));
                    sb3.append(" ");
                    sb3.append(OTRApp.f29417G.getString(R.string.app_name));
                    sb3.append(" ");
                    sb3.append(categoriesActivity4.getString(R.string.xc_alert_write_permission));
                    categoriesActivity.c(sb3.toString());
                } else {
                    Intent intent3 = new Intent(categoriesActivity, (Class<?>) SettingsMenuActivity.class);
                    categoriesActivity.startActivity(intent3);
                    intent3.addFlags(67108864);
                    categoriesActivity.startActivity(intent3);
                }
                break;
            case 3:
                Intent intent4 = new Intent(categoriesActivity, (Class<?>) UsersHistoryActivity.class);
                categoriesActivity.startActivity(intent4);
                intent4.addFlags(67108864);
                categoriesActivity.startActivity(intent4);
                break;
            case 4:
                Intent intent5 = new Intent(categoriesActivity, (Class<?>) MultiScreenActivityEXO.class);
                categoriesActivity.startActivity(intent5);
                intent5.addFlags(67108864);
                categoriesActivity.startActivity(intent5);
                break;
            case 5:
                if (!Methods.N(categoriesActivity.f28389G)) {
                    StringBuilder sb4 = new StringBuilder();
                    CategoriesActivity categoriesActivity5 = categoriesActivity.f28389G;
                    sb4.append(categoriesActivity5.getString(R.string.xc_you_need_to_allow));
                    sb4.append(" ");
                    sb4.append(OTRApp.f29417G.getString(R.string.app_name));
                    sb4.append(" ");
                    sb4.append(categoriesActivity5.getString(R.string.xc_alert_write_permission));
                    categoriesActivity.c(sb4.toString());
                } else {
                    z4.q0.q().g("ORT_WHICH_CAT", "TV");
                    z4.q0.q().f(0, "ORT_SELECTED_POS");
                    Intent intent6 = new Intent(categoriesActivity, (Class<?>) ChannelListActivity.class);
                    categoriesActivity.startActivity(intent6);
                    intent6.putExtra("forFavorNot", "no");
                    intent6.addFlags(67108864);
                    categoriesActivity.startActivity(intent6);
                }
                break;
            case 6:
                Intent intent7 = new Intent(categoriesActivity, (Class<?>) ChannelListActivity.class);
                categoriesActivity.startActivity(intent7);
                intent7.putExtra("forFavorNot", "yes");
                intent7.addFlags(67108864);
                categoriesActivity.startActivity(intent7);
                break;
            case 7:
                if (!categoriesActivity.f28391H.contains("msg_status")) {
                    categoriesActivity.c(categoriesActivity.getString(R.string.no_notification));
                } else if (!categoriesActivity.f28391H.getString("msg_status", null).equals("ACTIVE")) {
                    categoriesActivity.c(categoriesActivity.getString(R.string.no_notification));
                } else {
                    categoriesActivity.c("Message!\n" + categoriesActivity.f28391H.getString("msg_txt", null));
                }
                break;
            case 8:
                Intent intent8 = new Intent(categoriesActivity, (Class<?>) RecordsActivity.class);
                categoriesActivity.startActivity(intent8);
                intent8.addFlags(67108864);
                categoriesActivity.startActivity(intent8);
                break;
            case 9:
                String str = CategoriesActivity.THEME;
                categoriesActivity.k();
                break;
            case 10:
                Intent intent9 = new Intent(categoriesActivity, (Class<?>) ProgramRemindersActivity.class);
                categoriesActivity.startActivity(intent9);
                intent9.addFlags(67108864);
                categoriesActivity.startActivity(intent9);
                break;
            case 11:
                Intent intent10 = new Intent(categoriesActivity, (Class<?>) SearchActivity.class);
                categoriesActivity.startActivity(intent10);
                intent10.addFlags(67108864);
                categoriesActivity.startActivity(intent10);
                break;
            case 12:
                if (!Methods.N(categoriesActivity.f28389G)) {
                    StringBuilder sb5 = new StringBuilder();
                    CategoriesActivity categoriesActivity6 = categoriesActivity.f28389G;
                    sb5.append(categoriesActivity6.getString(R.string.xc_you_need_to_allow));
                    sb5.append(" ");
                    sb5.append(OTRApp.f29417G.getString(R.string.app_name));
                    sb5.append(" ");
                    sb5.append(categoriesActivity6.getString(R.string.xc_alert_write_permission));
                    categoriesActivity.c(sb5.toString());
                } else {
                    z4.q0.q().g("ORT_WHICH_CAT", "TV");
                    Intent intent11 = new Intent(categoriesActivity, (Class<?>) EPGActivityXMLTV.class);
                    categoriesActivity.startActivity(intent11);
                    intent11.addFlags(67108864);
                    categoriesActivity.startActivity(intent11);
                }
                break;
            case 13:
                if (!Methods.N(categoriesActivity.f28389G)) {
                    StringBuilder sb6 = new StringBuilder();
                    CategoriesActivity categoriesActivity7 = categoriesActivity.f28389G;
                    sb6.append(categoriesActivity7.getString(R.string.xc_you_need_to_allow));
                    sb6.append(" ");
                    sb6.append(OTRApp.f29417G.getString(R.string.app_name));
                    sb6.append(" ");
                    sb6.append(categoriesActivity7.getString(R.string.xc_alert_write_permission));
                    categoriesActivity.c(sb6.toString());
                } else {
                    z4.q0.q().g("ORT_WHICH_CAT", "VOD");
                    z4.q0.q().f(0, "ORT_SELECTED_POS");
                    Intent intent12 = new Intent(categoriesActivity, (Class<?>) ChannelListActivity.class);
                    categoriesActivity.startActivity(intent12);
                    intent12.putExtra("forFavorNot", "no");
                    intent12.addFlags(67108864);
                    categoriesActivity.startActivity(intent12);
                }
                break;
            case 14:
                if (!Methods.N(categoriesActivity.f28389G)) {
                    StringBuilder sb7 = new StringBuilder();
                    CategoriesActivity categoriesActivity8 = categoriesActivity.f28389G;
                    sb7.append(categoriesActivity8.getString(R.string.xc_you_need_to_allow));
                    sb7.append(" ");
                    sb7.append(OTRApp.f29417G.getString(R.string.app_name));
                    sb7.append(" ");
                    sb7.append(categoriesActivity8.getString(R.string.xc_alert_write_permission));
                    categoriesActivity.c(sb7.toString());
                } else {
                    z4.q0.q().g("ORT_WHICH_CAT", "SERIES");
                    z4.q0.q().f(0, "ORT_SELECTED_POS");
                    Intent intent13 = new Intent(categoriesActivity, (Class<?>) ChannelListActivity.class);
                    categoriesActivity.startActivity(intent13);
                    intent13.putExtra("forFavorNot", "no");
                    intent13.addFlags(67108864);
                    categoriesActivity.startActivity(intent13);
                }
                break;
            default:
                if (!Methods.N(categoriesActivity.f28389G)) {
                    StringBuilder sb8 = new StringBuilder();
                    CategoriesActivity categoriesActivity9 = categoriesActivity.f28389G;
                    sb8.append(categoriesActivity9.getString(R.string.xc_you_need_to_allow));
                    sb8.append(" ");
                    sb8.append(OTRApp.f29417G.getString(R.string.app_name));
                    sb8.append(" ");
                    sb8.append(categoriesActivity9.getString(R.string.xc_alert_write_permission));
                    categoriesActivity.c(sb8.toString());
                } else {
                    z4.q0.q().g("ORT_WHICH_CAT", "CATCHUP");
                    Intent intent14 = new Intent(categoriesActivity, (Class<?>) ChannelListActivity.class);
                    categoriesActivity.startActivity(intent14);
                    intent14.putExtra("forFavorNot", "no");
                    intent14.addFlags(67108864);
                    categoriesActivity.startActivity(intent14);
                }
                break;
        }
    }
}
