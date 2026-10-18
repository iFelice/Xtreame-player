package G2;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.n;
import p096m2.l;
import p196z2.h;

/* JADX INFO: loaded from: classes.dex */
public final class d extends b {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f3398H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(Drawable drawable, int i8) {
        super(drawable);
        this.f3398H = i8;
    }

    @Override // y2.A
    public final void a() {
        int i8 = this.f3398H;
        Drawable drawable = this.f3397G;
        switch (i8) {
            case 1:
                ((H2.c) drawable).f3639G.f3638a.f3667l.prepareToDraw();
                break;
            default:
                if (drawable instanceof BitmapDrawable) {
                    ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
                } else if (drawable instanceof H2.c) {
                    ((H2.c) drawable).f3639G.f3638a.f3667l.prepareToDraw();
                }
                break;
        }
    }

    @Override // y2.D
    public final void b() {
        h hVar;
        h hVar2;
        h hVar3;
        switch (this.f3398H) {
            case 0:
                break;
            default:
                H2.c cVar = (H2.c) this.f3397G;
                cVar.stop();
                cVar.f3642J = true;
                H2.h hVar4 = cVar.f3639G.f3638a;
                hVar4.f3658c.clear();
                Bitmap bitmap = hVar4.f3667l;
                if (bitmap != null) {
                    hVar4.f3660e.a(bitmap);
                    hVar4.f3667l = null;
                }
                hVar4.f3661f = false;
                H2.e eVar = hVar4.f3664i;
                n nVar = hVar4.f3659d;
                if (eVar != null) {
                    nVar.k(eVar);
                    hVar4.f3664i = null;
                }
                H2.e eVar2 = hVar4.f3666k;
                if (eVar2 != null) {
                    nVar.k(eVar2);
                    hVar4.f3666k = null;
                }
                H2.e eVar3 = hVar4.f3668m;
                if (eVar3 != null) {
                    nVar.k(eVar3);
                    hVar4.f3668m = null;
                }
                p159u2.e eVar4 = (p159u2.e) hVar4.f3656a;
                eVar4.f30482l = null;
                byte[] bArr = eVar4.f30479i;
                l lVar = eVar4.f30473c;
                if (bArr != null && (hVar3 = (h) lVar.f27232I) != null) {
                    hVar3.h(bArr);
                }
                int[] iArr = eVar4.f30480j;
                if (iArr != null && (hVar2 = (h) lVar.f27232I) != null) {
                    hVar2.h(iArr);
                }
                Bitmap bitmap2 = eVar4.f30483m;
                if (bitmap2 != null) {
                    ((p196z2.d) lVar.f27231H).a(bitmap2);
                }
                eVar4.f30483m = null;
                eVar4.f30474d = null;
                eVar4.f30489s = null;
                byte[] bArr2 = eVar4.f30475e;
                if (bArr2 != null && (hVar = (h) lVar.f27232I) != null) {
                    hVar.h(bArr2);
                }
                hVar4.f3665j = true;
                break;
        }
    }

    @Override // y2.D
    public final int d() {
        int i8 = this.f3398H;
        Drawable drawable = this.f3397G;
        switch (i8) {
            case 0:
                return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
            default:
                H2.h hVar = ((H2.c) drawable).f3639G.f3638a;
                p159u2.e eVar = (p159u2.e) hVar.f3656a;
                return (eVar.f30480j.length * 4) + eVar.f30474d.limit() + eVar.f30479i.length + hVar.f3669n;
        }
    }

    @Override // y2.D
    public final Class e() {
        switch (this.f3398H) {
            case 0:
                return this.f3397G.getClass();
            default:
                return H2.c.class;
        }
    }
}
