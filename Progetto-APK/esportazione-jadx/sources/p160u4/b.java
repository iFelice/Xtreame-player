package p160u4;

import M2.f;
import N2.e;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.google.android.gms.internal.atv_ads_framework.N0;
import com.google.android.gms.internal.atv_ads_framework.O0;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.tv.ads.controls.SideDrawerFragment;

/* JADX INFO: loaded from: classes.dex */
public final class b extends f {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ SideDrawerFragment f30510I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(SideDrawerFragment sideDrawerFragment, ImageView imageView) {
        super(imageView);
        this.f30510I = sideDrawerFragment;
    }

    @Override // M2.i
    public final /* bridge */ /* synthetic */ void a(Object obj, e eVar) {
        SideDrawerFragment sideDrawerFragment = this.f30510I;
        x0 x0VarC = x0.C(sideDrawerFragment.M());
        N0 n0L = O0.l();
        n0L.e();
        n0L.g(2);
        x0VarC.E((O0) n0L.b());
        sideDrawerFragment.f24201F0.setImageDrawable((Drawable) obj);
    }

    @Override // M2.i
    public final void d(Drawable drawable) {
        SideDrawerFragment sideDrawerFragment = this.f30510I;
        x0 x0VarC = x0.C(sideDrawerFragment.M());
        N0 n0L = O0.l();
        n0L.e();
        n0L.g(2);
        n0L.f(4);
        x0VarC.E((O0) n0L.b());
        sideDrawerFragment.f24200E0.setVisibility(8);
        sideDrawerFragment.f24203H0.setVisibility(0);
        sideDrawerFragment.f24204I0.requestFocus();
    }
}
