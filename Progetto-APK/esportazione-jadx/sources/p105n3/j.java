package p105n3;

import J3.g;
import J3.h;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import com.google.android.gms.internal.ads.C1561kH;
import com.google.android.gms.internal.ads.C1625le;
import com.google.android.gms.internal.ads.C2246xc;
import java.io.IOException;
import p032e0.u;
import p075j3.b;
import p083k3.l;
import p086l.RunnableC3036k;
import p113o3.AbstractC3156n;
import p113o3.O;

/* JADX INFO: loaded from: classes.dex */
public final class j extends AbstractC3156n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f27507b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f27508c;

    public j(Context context) {
        this.f27508c = context;
    }

    private final void c() {
        boolean zB;
        try {
            zB = b.b((Context) this.f27508c);
        } catch (g | h | IOException | IllegalStateException e8) {
            p120p3.h.e("Fail to get isAdIdFakeForDebugLogging", e8);
            zB = false;
        }
        synchronized (p120p3.g.f28212b) {
            p120p3.g.f28213c = true;
            p120p3.g.f28214d = zB;
        }
        p120p3.h.g("Update ad debug logging enablement as " + zB);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00b2  */
    @Override // p113o3.AbstractC3156n
    public final void a() {
        BitmapDrawable bitmapDrawable;
        switch (this.f27507b) {
            case 0:
                k kVar = (k) this.f27508c;
                u uVar = l.f25980A.f26001u;
                Bitmap bitmap = (Bitmap) uVar.f24776a.get(Integer.valueOf(kVar.f27511I.f11651U.f25963L));
                if (bitmap != null) {
                    p083k3.g gVar = kVar.f27511I.f11651U;
                    boolean z7 = gVar.f25961J;
                    Activity activity = kVar.f27510H;
                    if (z7) {
                        float f8 = gVar.f25962K;
                        if (f8 <= 0.0f || f8 > 25.0f) {
                            bitmapDrawable = new BitmapDrawable(activity.getResources(), bitmap);
                        } else {
                            try {
                                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
                                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateScaledBitmap);
                                RenderScript renderScriptCreate = RenderScript.create(activity);
                                ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
                                Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateScaledBitmap);
                                Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
                                scriptIntrinsicBlurCreate.setRadius(f8);
                                scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
                                scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
                                allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap);
                                bitmapDrawable = new BitmapDrawable(activity.getResources(), bitmapCreateBitmap);
                            } catch (RuntimeException unused) {
                                bitmapDrawable = new BitmapDrawable(activity.getResources(), bitmap);
                            }
                        }
                        break;
                    } else {
                        bitmapDrawable = new BitmapDrawable(activity.getResources(), bitmap);
                    }
                    O.f27924l.post(new RunnableC3036k(this, bitmapDrawable, 18));
                    return;
                }
                return;
            case 1:
                c();
                return;
            default:
                C1625le c1625le = (C1625le) this.f27508c;
                C2246xc c2246xc = new C2246xc(c1625le.f19809e, c1625le.f19810f.f28196G);
                synchronized (((C1625le) this.f27508c).f19805a) {
                    try {
                        C1561kH c1561kH = l.f25980A.f25992l;
                        C1561kH.g(((C1625le) this.f27508c).f19812h, c2246xc);
                    } catch (IllegalArgumentException e8) {
                        p120p3.h.h("Cannot config CSI reporter.", e8);
                    }
                    break;
                }
                return;
        }
    }

    public j(C1625le c1625le) {
        this.f27508c = c1625le;
    }

    public /* synthetic */ j(k kVar) {
        this.f27508c = kVar;
    }
}
