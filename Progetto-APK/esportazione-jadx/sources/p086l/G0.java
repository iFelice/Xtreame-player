package p086l;

import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import b7.AsyncTaskC0522h1;
import org.json.JSONException;
import pe.hf.black20.PlayStreamEPGActivity;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class G0 implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26110G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f26111H;

    public /* synthetic */ G0(Object obj, int i8) {
        this.f26110G = i8;
        this.f26111H = obj;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i8, long j8) {
        C3066z0 c3066z0;
        int i9 = this.f26110G;
        Object obj = this.f26111H;
        switch (i9) {
            case 0:
                if (i8 != -1 && (c3066z0 = ((M0) obj).f26132I) != null) {
                    c3066z0.setListSelectionHidden(false);
                    break;
                }
                break;
            default:
                try {
                    if (!q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("xtreamcodes") && !q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("otr")) {
                        if (q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("ezserver")) {
                            Log.d("XCIPTV_TAG", "--------------setOnItemSelectedListener-----------listview_ch.setOnItemSelectedListener");
                            if (!((AsyncTaskC0522h1) obj).f10310b.f28918i0.equals(((AsyncTaskC0522h1) obj).f10310b.f28939p0.getJSONObject(i8).getString("name"))) {
                                ((AsyncTaskC0522h1) obj).f10310b.f28918i0 = ((AsyncTaskC0522h1) obj).f10310b.f28939p0.getJSONObject(i8).getString("name");
                                ((AsyncTaskC0522h1) obj).f10310b.f28920i2 = true;
                                Log.d("XCIPTV_TAG", ((AsyncTaskC0522h1) obj).f10310b.f28939p0.getJSONObject(i8).getString("stream_id"));
                                ((AsyncTaskC0522h1) obj).f10310b.f28924k0 = ((AsyncTaskC0522h1) obj).f10310b.f28939p0.getJSONObject(i8).getString("stream_id");
                                PlayStreamEPGActivity.s(((AsyncTaskC0522h1) obj).f10310b);
                            }
                        }
                    }
                    if (!((AsyncTaskC0522h1) obj).f10310b.f28918i0.equals(((AsyncTaskC0522h1) obj).f10310b.f28939p0.getJSONObject(i8).getString("name"))) {
                        ((AsyncTaskC0522h1) obj).f10310b.f28918i0 = ((AsyncTaskC0522h1) obj).f10310b.f28939p0.getJSONObject(i8).getString("name");
                        ((AsyncTaskC0522h1) obj).f10310b.f28920i2 = true;
                        if (q0.q().b("ORT_PROCESS_STATUS") == 0) {
                            ((AsyncTaskC0522h1) obj).f10310b.N(((AsyncTaskC0522h1) obj).f10310b.f28939p0.getJSONObject(i8).getString("epg_channel_id"), "yes");
                        }
                        ((AsyncTaskC0522h1) obj).f10310b.f28958v1.setText("PlayStreamEPGActivity - TV Guide For - " + ((AsyncTaskC0522h1) obj).f10310b.f28939p0.getJSONObject(i8).getString("name"));
                    }
                } catch (JSONException unused) {
                    return;
                }
                break;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
