package l7;

import android.util.Log;
import android.widget.TextView;
import java.text.SimpleDateFormat;
import java.util.Date;
import p000a.r;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;
import pe.hf.black20.services.OTRServices;
import pe.hf.black20.updatecontents.XCUpdateContents;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26641G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ XCUpdateContents f26642H;

    public /* synthetic */ h(XCUpdateContents xCUpdateContents, int i8) {
        this.f26641G = i8;
        this.f26642H = xCUpdateContents;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f26641G;
        XCUpdateContents xCUpdateContents = this.f26642H;
        switch (i8) {
            case 0:
                int i9 = XCUpdateContents.f29391b0;
                xCUpdateContents.getClass();
                Log.d("XCIPTV_TAG", "HANDLER running ---------------checkShouldFinish()");
                if (xCUpdateContents.f29399N && xCUpdateContents.f29400O && xCUpdateContents.f29401P && xCUpdateContents.f29402Q && xCUpdateContents.f29403R && xCUpdateContents.f29404S) {
                    if (xCUpdateContents.f29411Z != null) {
                        xCUpdateContents.f29411Z = null;
                        xCUpdateContents.f29410Y.removeCallbacks(null);
                        xCUpdateContents.f29410Y.removeCallbacksAndMessages(null);
                    }
                    xCUpdateContents.f29409X = "yes";
                    r.n(xCUpdateContents.f29392G, "tvvodseries_dl_time", new SimpleDateFormat("MM/dd/yyyy HH:mm:ss").format(new Date()));
                    TextView textView = xCUpdateContents.f29408W;
                    StringBuilder sb = new StringBuilder();
                    XCUpdateContents xCUpdateContents2 = xCUpdateContents.f29396K;
                    sb.append(xCUpdateContents2.getString(R.string.xc_completed));
                    sb.append("!");
                    textView.setText(sb.toString());
                    xCUpdateContents.f29397L.setText("Close");
                    xCUpdateContents.f29397L.setEnabled(true);
                    xCUpdateContents.f29409X = "yes";
                    q0.q().f(0, "ORT_PROCESS_STATUS");
                    if (Methods.R(xCUpdateContents2)) {
                        ORPlayerMainActivity.f28777I0 = true;
                    }
                    g.b(xCUpdateContents2);
                    xCUpdateContents.finish();
                    Log.d("XCIPTV_TAG", "XCUpdateContents is completed. ");
                    Log.d("XCIPTV_TAG", "START SERVICE-----------OTRServices--------------");
                    Methods.Y(xCUpdateContents2, OTRServices.class);
                    xCUpdateContents.f29398M.shutdown();
                }
                xCUpdateContents.f29410Y.postDelayed(xCUpdateContents.f29411Z, 5000L);
                break;
            case 1:
                xCUpdateContents.f29403R = true;
                break;
            case 2:
                xCUpdateContents.f29401P = true;
                break;
            case 3:
                xCUpdateContents.f29399N = true;
                break;
            case 4:
                xCUpdateContents.f29402Q = true;
                xCUpdateContents.f29406U.setText(xCUpdateContents.f29396K.getString(R.string.xc_completed) + "!");
                Log.d("XCIPTV_TAG", "XCUpdateContents -----Completed - All VODs added to Local Database");
                break;
            case 5:
                xCUpdateContents.f29400O = true;
                xCUpdateContents.f29405T.setText(xCUpdateContents.f29396K.getString(R.string.xc_completed) + "!");
                Log.d("XCIPTV_TAG", "XCUpdateContents -----Completed - All Live TV List added to Local Database");
                break;
            default:
                xCUpdateContents.f29404S = true;
                xCUpdateContents.f29407V.setText(xCUpdateContents.f29396K.getString(R.string.xc_completed) + "!");
                Log.d("XCIPTV_TAG", "XCUpdateContents -----Completed - All Series added to Local Database");
                break;
        }
    }
}
