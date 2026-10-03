package b7;

import android.os.AsyncTask;
import android.util.Log;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;
import pe.hf.black20.ChannelPickerActivity;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class J extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ChannelPickerActivity f10089b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ J(ChannelPickerActivity channelPickerActivity) {
        this(channelPickerActivity, 0);
        this.f10088a = 0;
    }

    public final void a() {
        int i8 = this.f10088a;
        ChannelPickerActivity channelPickerActivity = this.f10089b;
        switch (i8) {
            case 0:
                z4.q0.q().g("ORT_WHICH_CAT", "TV");
                channelPickerActivity.f28505T = null;
                channelPickerActivity.f28505T = new ArrayList();
                channelPickerActivity.f28505T = z4.q0.t(channelPickerActivity.f28496K);
                channelPickerActivity.f28495J0 = null;
                channelPickerActivity.f28495J0 = new JSONArray((Collection) channelPickerActivity.f28505T);
                break;
            default:
                channelPickerActivity.f28504S = null;
                channelPickerActivity.f28504S = new ArrayList();
                Log.d("XCIPTV_TAG", "--------------category_id-----------------" + channelPickerActivity.f28499N);
                boolean zEquals = channelPickerActivity.f28499N.equals("99999");
                String str = channelPickerActivity.f28501P;
                ChannelPickerActivity channelPickerActivity2 = channelPickerActivity.f28496K;
                if (zEquals) {
                    channelPickerActivity.f28504S = z4.q0.v(channelPickerActivity2, str);
                } else {
                    channelPickerActivity.f28504S = z4.q0.u(channelPickerActivity2, false, "all", str, channelPickerActivity.f28499N);
                }
                channelPickerActivity.f28493I0 = null;
                channelPickerActivity.f28493I0 = new JSONArray((Collection) channelPickerActivity.f28504S);
                break;
        }
    }

    public final void b(Void r7) {
        int i8 = this.f10088a;
        ChannelPickerActivity channelPickerActivity = this.f10089b;
        switch (i8) {
            case 0:
                super.onPostExecute(r7);
                channelPickerActivity.f28488G.setVisibility(4);
                ChannelPickerActivity channelPickerActivity2 = channelPickerActivity.f28496K;
                channelPickerActivity.f28502Q.setAdapter((ListAdapter) new C0549t(0, channelPickerActivity2, channelPickerActivity.f28505T));
                if (channelPickerActivity.f28492I.v0(channelPickerActivity.f28500O.f25478a, channelPickerActivity.f28500O.f25478a + "_live").equals("yes")) {
                    channelPickerActivity.f28499N = "99999";
                    channelPickerActivity.f28498M = channelPickerActivity2.getString(R.string.xc_favorites);
                    z4.q0.q().g("ORT_CAT_NAME", channelPickerActivity.f28498M);
                    channelPickerActivity.f28502Q.setSelection(0);
                    z4.q0.q().f(0, "ORT_SELECTED_POS");
                } else {
                    try {
                        channelPickerActivity.f28498M = channelPickerActivity.f28495J0.getJSONObject(2).getString("category_name");
                        z4.q0.q().g("ORT_CAT_NAME", channelPickerActivity.f28498M);
                        channelPickerActivity.f28499N = channelPickerActivity.f28495J0.getJSONObject(2).getString("category_id");
                        break;
                    } catch (JSONException unused) {
                    }
                    z4.q0.q().f(2, "ORT_SELECTED_POS");
                    channelPickerActivity.f28502Q.setSelection(2);
                }
                channelPickerActivity.f28502Q.requestFocus();
                new J(channelPickerActivity, 1).execute(new Void[0]);
                channelPickerActivity.f28502Q.setOnItemClickListener(new C0514f(this, 7));
                break;
            default:
                super.onPostExecute(r7);
                channelPickerActivity.f28488G.setVisibility(4);
                channelPickerActivity.f28503R.setAdapter((ListAdapter) new C0525i1(channelPickerActivity, channelPickerActivity.f28504S));
                channelPickerActivity.f28503R.setOnItemClickListener(new C0514f(this, 8));
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        switch (this.f10088a) {
            case 0:
                a();
                break;
            default:
                a();
                break;
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        switch (this.f10088a) {
            case 0:
                b((Void) obj);
                break;
            default:
                b((Void) obj);
                break;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPreExecute() {
        int i8 = this.f10088a;
        ChannelPickerActivity channelPickerActivity = this.f10089b;
        switch (i8) {
            case 0:
                super.onPreExecute();
                channelPickerActivity.f28488G.setVisibility(0);
                break;
            default:
                super.onPreExecute();
                channelPickerActivity.f28488G.setVisibility(0);
                break;
        }
    }

    public /* synthetic */ J(ChannelPickerActivity channelPickerActivity, int i8) {
        this.f10088a = i8;
        this.f10089b = channelPickerActivity;
    }
}
