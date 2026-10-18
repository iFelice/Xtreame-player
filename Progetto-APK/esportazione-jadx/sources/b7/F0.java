package b7;

import D1.C0152q;
import android.view.View;
import android.widget.TextView;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;
import pe.hf.black20.util.Methods;

/* JADX INFO: loaded from: classes2.dex */
public final class F0 implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9997b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ O1.c0 f9998c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ O1.C f9999d;

    public /* synthetic */ F0(int i8, int i9, O1.C c8, O1.c0 c0Var) {
        this.f9996a = i9;
        this.f9999d = c8;
        this.f9998c = c0Var;
        this.f9997b = i8;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int i8 = this.f9996a;
        String strA = HttpUrl.FRAGMENT_ENCODE_SET;
        int i9 = this.f9997b;
        O1.C c8 = this.f9999d;
        int i10 = 0;
        O1.c0 c0Var = this.f9998c;
        switch (i8) {
            case 0:
                if (!z7) {
                    H0 h8 = (H0) c0Var;
                    h8.f10025a0.setVisibility(8);
                    h8.f10028d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    H0 h9 = (H0) c0Var;
                    h9.f10025a0.setVisibility(0);
                    h9.f10028d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                    ORPlayerMainActivity.f28775G0 = false;
                    C0152q c0152q = (C0152q) c8;
                    ((I0) c0152q.f2206M).f10056X0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    Object obj = c0152q.f2206M;
                    ((I0) obj).f10057Y0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    ((I0) obj).f10059a1.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    ((I0) obj).f10058Z0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    ((I0) obj).f10055W0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    ((I0) obj).f10054V0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    ((I0) obj).f10053U0.setText(((String) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("name")).toUpperCase());
                    if (((String) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("backdrop_path")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                        ((com.bumptech.glide.l) com.bumptech.glide.b.d(((I0) obj).l()).n((String) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("cover")).b()).H(G2.c.b(((I0) obj).f10075q1)).F(((I0) obj).f10052T0);
                    } else {
                        ((com.bumptech.glide.l) com.bumptech.glide.b.d(((I0) obj).l()).n((String) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("backdrop_path")).b()).H(G2.c.b(((I0) obj).f10075q1)).F(((I0) obj).f10052T0);
                    }
                    c0152q.f2205L = (String) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("series_id");
                    ((I0) obj).f10056X0.setText((CharSequence) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("genre"));
                    ((I0) obj).f10057Y0.setText((CharSequence) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("plot"));
                    ((I0) obj).f10059a1.setText((CharSequence) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("cast"));
                    String str = (String) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("rating");
                    if (str.length() > 0) {
                        int i11 = Integer.parseInt(str.substring(0, 1));
                        while (i10 < i11) {
                            strA = U2.A(strA, "⭐");
                            TextView textView = ((I0) obj).f10054V0;
                            StringBuilder sbL = p000a.r.l(strA, " (");
                            sbL.append((String) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("rating"));
                            sbL.append(")");
                            textView.setText(sbL.toString());
                            i10++;
                        }
                    }
                    String strX = (String) ((HashMap) ((ArrayList) c0152q.f2203J).get(i9)).get("releaseDate");
                    if (strX.length() > 8) {
                        strX = Methods.x(strX);
                    }
                    ((I0) obj).f10055W0.setText(strX);
                }
                break;
            default:
                if (!z7) {
                    R0 r7 = (R0) c0Var;
                    r7.f10174a0.setVisibility(8);
                    r7.f10177d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    R0 r8 = (R0) c0Var;
                    r8.f10174a0.setVisibility(0);
                    C0152q c0152q2 = (C0152q) c8;
                    S0.U((S0) c0152q2.f2206M);
                    r8.f10177d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                    ORPlayerMainActivity.f28775G0 = false;
                    String str2 = (String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i9)).get("rating");
                    int length = str2.length();
                    Object obj2 = c0152q2.f2206M;
                    if (length > 0) {
                        int i12 = Integer.parseInt(str2.substring(0, 1));
                        while (i10 < i12) {
                            strA = U2.A(strA, "⭐");
                            TextView textView2 = ((S0) obj2).f10198T0;
                            StringBuilder sbL2 = p000a.r.l(strA, " (");
                            sbL2.append((String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i9)).get("rating"));
                            sbL2.append(")");
                            textView2.setText(sbL2.toString());
                            i10++;
                        }
                    }
                    S0.T((S0) obj2);
                    ((S0) obj2).f10197S0.setText((CharSequence) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i9)).get("name"));
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(((S0) obj2).l()).n((String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i9)).get("stream_icon")).b()).f(R.drawable.blank)).H(G2.c.b(((S0) obj2).f10208d1)).F(((S0) obj2).f10196R0);
                    ((S0) obj2).f10210f1 = (String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i9)).get("stream_id");
                    ((S0) obj2).f10211g1 = (String) ((HashMap) ((ArrayList) c0152q2.f2203J).get(i9)).get("custom_sid");
                }
                break;
        }
    }
}
