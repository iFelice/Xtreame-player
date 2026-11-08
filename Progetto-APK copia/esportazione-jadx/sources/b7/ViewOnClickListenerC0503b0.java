package b7;

import android.content.Intent;
import android.view.View;
import android.widget.Toast;
import com.google.protobuf.U2;
import pe.hf.black20.MultiScreenActivityEXO;
import pe.hf.black20.ProgramRemindersActivity;
import pe.hf.black20.RecordsActivity;
import pe.hf.black20.SearchActivity;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.fastogt.updatecontent.OTRUpdateContents;
import pe.hf.black20.updatecontents.EZServerUpdateContents;
import pe.hf.black20.updatecontents.M3UUpdateContents;
import pe.hf.black20.updatecontents.XCUpdateContents;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnClickListenerC0503b0 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10266G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0550t0 f10267H;

    public /* synthetic */ ViewOnClickListenerC0503b0(C0550t0 c0550t0, int i8) {
        this.f10266G = i8;
        this.f10267H = c0550t0;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10266G;
        C0550t0 c0550t0 = this.f10267H;
        switch (i8) {
            case 0:
                Intent intent = new Intent(c0550t0.j(), (Class<?>) EPGActivityXMLTV.class);
                c0550t0.j().startActivity(intent);
                intent.addFlags(67108864);
                c0550t0.R(intent);
                break;
            case 1:
                Intent intent2 = new Intent(c0550t0.j(), (Class<?>) SearchActivity.class);
                c0550t0.j().startActivity(intent2);
                intent2.addFlags(67108864);
                c0550t0.R(intent2);
                break;
            case 2:
                Intent intent3 = new Intent(c0550t0.j(), (Class<?>) MultiScreenActivityEXO.class);
                c0550t0.j().startActivity(intent3);
                intent3.addFlags(67108864);
                c0550t0.R(intent3);
                break;
            case 3:
                break;
            case 4:
                Intent intent4 = new Intent(c0550t0.j(), (Class<?>) RecordsActivity.class);
                c0550t0.j().startActivity(intent4);
                intent4.addFlags(67108864);
                c0550t0.R(intent4);
                break;
            case 5:
                if (c0550t0.f10422C0.contains("whichPanel")) {
                    z4.q0.q().g("ORT_WHICH_PANEL", c0550t0.f10422C0.getString("whichPanel", null));
                }
                if (z4.q0.q().b("ORT_PROCESS_STATUS") != 0) {
                    Toast.makeText(c0550t0.l(), "Background Update Process is running!", 1).show();
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "xtreamcodes")) {
                    Methods.m(c0550t0.l(), "no");
                    c0550t0.j().startActivity(new Intent(c0550t0.j(), (Class<?>) XCUpdateContents.class));
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "ezserver")) {
                    c0550t0.j().startActivity(new Intent(c0550t0.j(), (Class<?>) EZServerUpdateContents.class));
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "m3u")) {
                    c0550t0.j().startActivity(new Intent(c0550t0.j(), (Class<?>) M3UUpdateContents.class));
                } else if (U2.z("ORT_WHICH_PANEL", "xtreamcodes", "otr")) {
                    c0550t0.j().startActivity(new Intent(c0550t0.j(), (Class<?>) OTRUpdateContents.class));
                }
                break;
            default:
                Intent intent5 = new Intent(c0550t0.j(), (Class<?>) ProgramRemindersActivity.class);
                c0550t0.j().startActivity(intent5);
                intent5.addFlags(67108864);
                c0550t0.R(intent5);
                break;
        }
    }
}
