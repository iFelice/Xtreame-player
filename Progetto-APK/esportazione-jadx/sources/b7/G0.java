package b7;

import D1.C0152q;
import android.view.View;
import android.widget.ImageView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class G0 implements View.OnLongClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10016G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f10017H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ O1.c0 f10018I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ O1.C f10019J;

    public /* synthetic */ G0(int i8, int i9, O1.C c8, O1.c0 c0Var) {
        this.f10016G = i9;
        this.f10019J = c8;
        this.f10017H = i8;
        this.f10018I = c0Var;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        int i8 = this.f10016G;
        O1.c0 c0Var = this.f10018I;
        int i9 = this.f10017H;
        O1.C c8 = this.f10019J;
        switch (i8) {
            case 0:
                C0152q c0152q = (C0152q) c8;
                c0152q.f2204K = (HashMap) ((ArrayList) c0152q.f2203J).get(i9);
                Object obj = c0152q.f2206M;
                if (((I0) obj).f10076r1.contains("\"series_id\":\"" + ((String) ((HashMap) c0152q.f2204K).get("series_id")) + "\"")) {
                    ((I0) obj).f10037E0.e0((String) ((HashMap) c0152q.f2204K).get("series_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), "_series");
                    ((ImageView) ((H0) c0Var).f10027c0.findViewWithTag(((HashMap) c0152q.f2204K).get("series_id"))).setVisibility(8);
                    Toast.makeText(((I0) obj).l(), ((String) ((HashMap) c0152q.f2204K).get("name")) + " - has been removed from Favorites", 1).show();
                } else {
                    ((I0) obj).f10037E0.f0((String) ((HashMap) c0152q.f2204K).get("series_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_series");
                    ((ImageView) ((H0) c0Var).f10027c0.findViewWithTag(((HashMap) c0152q.f2204K).get("series_id"))).setVisibility(0);
                    Toast.makeText(((I0) obj).l(), ((String) ((HashMap) c0152q.f2204K).get("name")) + " - has been added to Favorites", 1).show();
                }
                ((I0) obj).T();
                break;
            default:
                C0152q c0152q2 = (C0152q) c8;
                c0152q2.f2204K = (HashMap) ((ArrayList) c0152q2.f2203J).get(i9);
                Object obj2 = c0152q2.f2206M;
                if (((S0) obj2).f10215k1.contains("\"stream_id\":\"" + ((String) ((HashMap) c0152q2.f2204K).get("stream_id")) + "\"")) {
                    ((S0) obj2).f10183E0.e0((String) ((HashMap) c0152q2.f2204K).get("stream_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), "_vod");
                    ((ImageView) ((R0) c0Var).f10176c0.findViewWithTag(((HashMap) c0152q2.f2204K).get("stream_id"))).setVisibility(8);
                    Toast.makeText(((S0) obj2).l(), ((String) ((HashMap) c0152q2.f2204K).get("name")) + " - has been removed from Favorites", 1).show();
                } else {
                    ((S0) obj2).f10183E0.f0((String) ((HashMap) c0152q2.f2204K).get("stream_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_vod");
                    Toast.makeText(((S0) obj2).l(), ((String) ((HashMap) c0152q2.f2204K).get("name")) + " - has been added to Favorites", 1).show();
                    ((ImageView) ((R0) c0Var).f10176c0.findViewWithTag(((HashMap) c0152q2.f2204K).get("stream_id"))).setVisibility(0);
                }
                ((S0) obj2).X();
                break;
        }
        return true;
    }
}
