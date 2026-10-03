package D1;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import p094m0.AbstractC3123f;
import p094m0.Y;
import p094m0.k0;
import pe.hf.black20.MovieInfoActivity;
import pe.hf.black20.R;
import pe.hf.black20.fastogt.updatecontent.OTRUpdateContents;
import pe.hf.black20.updatecontents.XCUpdateContents;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: D1.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0144i implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2186G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f2187H;

    public /* synthetic */ ViewOnClickListenerC0144i(Object obj, int i8) {
        this.f2186G = i8;
        this.f2187H = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f2186G;
        Object obj = this.f2187H;
        switch (i8) {
            case 0:
                C0156v c0156v = ((C0145j) obj).f2189L;
                Y y7 = c0156v.f2252V0;
                if (y7 != null && ((AbstractC3123f) y7).c(29)) {
                    k0 k0VarE = ((B0.O) c0156v.f2252V0).E();
                    Y y8 = c0156v.f2252V0;
                    R0.k kVar = (R0.k) k0VarE;
                    kVar.getClass();
                    R0.j jVar = new R0.j(kVar);
                    jVar.c(1);
                    jVar.j(1, false);
                    ((B0.O) y8).U(jVar.b());
                    c0156v.f2243R.f(1, c0156v.getResources().getString(R.string.exo_track_selection_auto));
                    c0156v.f2253W.dismiss();
                    break;
                }
                break;
            case 1:
                C0151p c0151p = (C0151p) obj;
                int i9 = C0151p.f2197e0;
                int iC = c0151p.c();
                C0156v c0156v2 = c0151p.f2201d0;
                View view2 = c0156v2.f2285o0;
                if (iC == 0) {
                    view2.getClass();
                    c0156v2.e(c0156v2.f2245S, view2);
                } else if (iC != 1) {
                    c0156v2.f2253W.dismiss();
                } else {
                    view2.getClass();
                    c0156v2.e(c0156v2.f2249U, view2);
                }
                break;
            case 2:
                C0156v c0156v3 = ((C0145j) obj).f2189L;
                Y y9 = c0156v3.f2252V0;
                if (y9 != null && ((AbstractC3123f) y9).c(29)) {
                    k0 k0VarE2 = ((B0.O) c0156v3.f2252V0).E();
                    Y y10 = c0156v3.f2252V0;
                    R0.k kVar2 = (R0.k) k0VarE2;
                    kVar2.getClass();
                    R0.j jVar2 = new R0.j(kVar2);
                    jVar2.c(3);
                    jVar2.e();
                    jVar2.g();
                    jVar2.i();
                    ((B0.O) y10).U(jVar2.b());
                    c0156v3.f2253W.dismiss();
                    break;
                }
                break;
            case 3:
                MovieInfoActivity movieInfoActivity = (MovieInfoActivity) obj;
                int i10 = MovieInfoActivity.f28623l0;
                String str = "http://www.youtube.com/watch?v=" + movieInfoActivity.f28652i0;
                try {
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        if (Methods.P()) {
                            intent.addFlags(268435456);
                            intent.addFlags(134217728);
                        } else {
                            intent.setPackage("com.google.android.youtube");
                            intent.addFlags(335544320);
                        }
                        movieInfoActivity.startActivity(intent);
                    } catch (Exception unused) {
                        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        if (Methods.P()) {
                            intent2.addFlags(402653184);
                        } else {
                            intent2.addFlags(335544320);
                        }
                        movieInfoActivity.startActivity(intent2);
                        return;
                    }
                } catch (Exception e8) {
                    Log.e("XCIPTV_TAG", "Failed to open YouTube video: " + e8.getMessage());
                    return;
                }
                break;
            case 4:
                int i11 = OTRUpdateContents.f29299R;
                ((OTRUpdateContents) obj).finish();
                break;
            default:
                int i12 = XCUpdateContents.f29391b0;
                ((XCUpdateContents) obj).finish();
                break;
        }
    }
}
