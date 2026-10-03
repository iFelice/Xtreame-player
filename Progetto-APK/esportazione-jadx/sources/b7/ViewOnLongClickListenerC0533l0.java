package b7;

import android.util.Log;
import android.view.View;
import com.google.protobuf.U2;
import okhttp3.HttpUrl;
import pe.hf.black20.ORPlayerMainActivity;

/* JADX INFO: renamed from: b7.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnLongClickListenerC0533l0 implements View.OnLongClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10343G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f10344H;

    public /* synthetic */ ViewOnLongClickListenerC0533l0(Object obj, int i8) {
        this.f10343G = i8;
        this.f10344H = obj;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        int i8 = this.f10343G;
        Object obj = this.f10344H;
        switch (i8) {
            case 0:
                C0536m0 c0536m0 = (C0536m0) obj;
                c7.d dVar = new c7.d(c0536m0.f10352L.l());
                StringBuilder sb = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
                sb.append((String) c0536m0.f10351K.get("name"));
                if (dVar.B0(sb.toString())) {
                    StringBuilder sb2 = new StringBuilder();
                    U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb2, "-");
                    sb2.append((String) c0536m0.f10351K.get("name"));
                    ORPlayerMainActivity.v(dVar, sb2.toString(), c0536m0.f10352L.l(), "SERIES");
                }
                Log.d("XCIPTV_TAG", "----------Long Press Series" + ((String) c0536m0.f10351K.get("name")));
                break;
            case 1:
                C0524i0 c0524i0 = (C0524i0) obj;
                c7.d dVar2 = new c7.d(c0524i0.f10316L.l());
                StringBuilder sb3 = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb3, "-");
                sb3.append((String) c0524i0.f10315K.get("stream_id"));
                if (dVar2.A0(sb3.toString()) > 0) {
                    ORPlayerMainActivity.v(dVar2, (String) c0524i0.f10315K.get("stream_id"), c0524i0.f10316L.l(), "VOD");
                }
                Log.d("XCIPTV_TAG", "----------Long Press VOD");
                break;
            case 2:
                I0 i9 = (I0) obj;
                I0.S(i9);
                i9.f10081w1.setVisibility(0);
                break;
            case 3:
                M0 m7 = (M0) obj;
                M0.S(m7);
                m7.f10139a1.setVisibility(0);
                break;
            default:
                S0 s7 = (S0) obj;
                S0.S(s7);
                s7.f10226v1.setVisibility(0);
                break;
        }
        return true;
    }
}
