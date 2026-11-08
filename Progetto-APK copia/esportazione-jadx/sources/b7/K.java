package b7;

import android.app.AlertDialog;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import com.google.protobuf.U2;
import java.util.HashMap;
import okhttp3.HttpUrl;
import org.json.JSONException;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class K implements AdapterView.OnItemLongClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10095b;

    public /* synthetic */ K(Object obj, int i8) {
        this.f10094a = i8;
        this.f10095b = obj;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView adapterView, View view, int i8, long j8) {
        int i9 = this.f10094a;
        Object obj = this.f10095b;
        int i10 = 1;
        switch (i9) {
            case 0:
                C0549t c0549t = (C0549t) obj;
                c0549t.f10418e = (HashMap) c0549t.f10417d.get(i8);
                AlertDialog.Builder builder = new AlertDialog.Builder(c0549t.f10415b);
                builder.setTitle(R.string.remove_watched_continue_watching);
                StringBuilder sb = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
                sb.append((String) c0549t.f10418e.get("id"));
                builder.setMessage(sb.toString());
                builder.setPositiveButton("YES", new O5.i(c0549t, i10));
                builder.setNegativeButton("NO", new L());
                builder.create().show();
                break;
            default:
                PlayStreamEPGActivity playStreamEPGActivity = ((AsyncTaskC0522h1) obj).f10310b;
                try {
                    String string = playStreamEPGActivity.f28939p0.getJSONObject(i8).getString("stream_id");
                    if (playStreamEPGActivity.f28863L0.d0((String) ((HashMap) playStreamEPGActivity.f28861K1.get(i8)).get("stream_id"), playStreamEPGActivity.f28872O0.f25478a, "_live").equals("yes")) {
                        playStreamEPGActivity.f28863L0.e0(string, z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET), "_live");
                    } else {
                        playStreamEPGActivity.f28863L0.f0(string, z4.q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "_live");
                    }
                } catch (JSONException unused) {
                    Log.d("XCIPTV_TAG", "---------JSONException");
                }
                break;
        }
        return true;
    }
}
