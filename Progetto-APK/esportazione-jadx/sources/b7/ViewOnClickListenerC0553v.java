package b7;

import D1.C0152q;
import android.app.AlertDialog;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.R;
import pe.hf.black20.SeriesActivity;

/* JADX INFO: renamed from: b7.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnClickListenerC0553v implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10503G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f10504H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f10505I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f10506J;

    public /* synthetic */ ViewOnClickListenerC0553v(AdapterView.OnItemLongClickListener onItemLongClickListener, int i8, AlertDialog alertDialog, int i9) {
        this.f10503G = i9;
        this.f10506J = onItemLongClickListener;
        this.f10504H = i8;
        this.f10505I = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10503G;
        Object obj = this.f10505I;
        int i9 = this.f10504H;
        Object obj2 = this.f10506J;
        switch (i8) {
            case 0:
                C0555w c0555w = (C0555w) obj2;
                ((ChannelListActivity) c0555w.f10515c).f28452O.M0((String) ((HashMap) c0555w.f10514b.get(i9)).get("id"));
                ChannelListActivity.a((ChannelListActivity) c0555w.f10515c);
                ((AlertDialog) obj).dismiss();
                break;
            case 1:
                C0555w c0555w2 = (C0555w) obj2;
                ((I0) c0555w2.f10515c).f10037E0.M0((String) ((HashMap) c0555w2.f10514b.get(i9)).get("id"));
                I0.S((I0) c0555w2.f10515c);
                ((AlertDialog) obj).dismiss();
                break;
            case 2:
                if (!z4.q0.q().a("ORT_remoteLongPressORPlayerSeriesFragment", false)) {
                    z4.q0.q().g("ORT_WHICH_CAT", "SERIES");
                    C0152q c0152q = (C0152q) obj2;
                    c0152q.f2204K = (HashMap) ((ArrayList) c0152q.f2203J).get(i9);
                    Object obj3 = c0152q.f2206M;
                    Intent intent = new Intent(((I0) obj3).l(), (Class<?>) SeriesActivity.class);
                    intent.putExtra("name", (String) ((HashMap) c0152q.f2204K).get("name"));
                    intent.putExtra("cover", (String) ((HashMap) c0152q.f2204K).get("cover"));
                    intent.putExtra("series_id", (String) ((HashMap) c0152q.f2204K).get("series_id"));
                    intent.putExtra("episode_run_time", (String) ((HashMap) c0152q.f2204K).get("episode_run_time"));
                    intent.putExtra("program_desc", ((I0) obj3).l().getString(R.string.xc_rating) + ": " + ((String) ((HashMap) c0152q.f2204K).get("rating")) + "  " + ((I0) obj3).l().getString(R.string.xc_genre) + ": " + ((String) ((HashMap) c0152q.f2204K).get("genre")) + " " + ((I0) obj3).l().getString(R.string.xc_date) + ": " + ((String) ((HashMap) c0152q.f2204K).get("releaseDate")));
                    ((I0) obj3).l().startActivity(intent);
                } else {
                    z4.q0.q().e("ORT_remoteLongPressORPlayerSeriesFragment", false);
                    C0152q c0152q2 = (C0152q) obj2;
                    boolean zContains = ((I0) c0152q2.f2206M).f10076r1.contains("\"series_id\":\"" + ((String) ((HashMap) c0152q2.f2204K).get("series_id")) + "\"");
                    Object obj4 = c0152q2.f2206M;
                    if (zContains) {
                        ((I0) obj4).f10037E0.e0((String) ((HashMap) c0152q2.f2204K).get("series_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), "_series");
                        ((ImageView) ((H0) obj).f10027c0.findViewWithTag(((HashMap) c0152q2.f2204K).get("series_id"))).setVisibility(8);
                        Toast.makeText(((I0) obj4).l(), ((String) ((HashMap) c0152q2.f2204K).get("name")) + " - has been removed from Favorites", 1).show();
                    } else {
                        ((I0) obj4).f10037E0.f0((String) ((HashMap) c0152q2.f2204K).get("series_id"), z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_series");
                        ((ImageView) ((H0) obj).f10027c0.findViewWithTag(((HashMap) c0152q2.f2204K).get("series_id"))).setVisibility(0);
                        Toast.makeText(((I0) obj4).l(), ((String) ((HashMap) c0152q2.f2204K).get("name")) + " - has been added to Favorites", 1).show();
                    }
                    ((I0) obj4).T();
                }
                break;
            case 3:
                C0555w c0555w3 = (C0555w) obj2;
                ((M0) c0555w3.f10515c).f10121I0.M0((String) ((HashMap) c0555w3.f10514b.get(i9)).get("id"));
                M0.S((M0) c0555w3.f10515c);
                ((AlertDialog) obj).dismiss();
                break;
            default:
                C0555w c0555w4 = (C0555w) obj2;
                ((S0) c0555w4.f10515c).f10183E0.M0((String) ((HashMap) c0555w4.f10514b.get(i9)).get("id"));
                S0.S((S0) c0555w4.f10515c);
                ((AlertDialog) obj).dismiss();
                break;
        }
    }

    public ViewOnClickListenerC0553v(C0152q c0152q, H0 h8, int i8) {
        this.f10503G = 2;
        this.f10506J = c0152q;
        this.f10505I = h8;
        this.f10504H = i8;
    }
}
