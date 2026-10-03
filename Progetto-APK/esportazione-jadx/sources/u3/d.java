package u3;

import android.content.Context;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.X8;
import p090l3.C3089l;
import p090l3.C3093n;
import p090l3.C3097p;
import p090l3.C3099q;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class d extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final FrameLayout f30505G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final X8 f30506H;

    public d(Context context) {
        X8 x8;
        super(context);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        this.f30505G = frameLayout;
        if (isInEditMode()) {
            x8 = null;
        } else {
            C3093n c3093n = C3097p.f26618f.f26620b;
            Context context2 = frameLayout.getContext();
            c3093n.getClass();
            x8 = (X8) new C3089l(c3093n, this, frameLayout, context2).d(context2, false);
        }
        this.f30506H = x8;
    }

    public final View a(String str) {
        X8 x8 = this.f30506H;
        if (x8 != null) {
            try {
                R3.a aVarM = x8.m(str);
                if (aVarM != null) {
                    return (View) R3.b.v0(aVarM);
                }
            } catch (RemoteException e8) {
                h.e("Unable to call getAssetView on delegate", e8);
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i8, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i8, layoutParams);
        super.bringChildToFront(this.f30505G);
    }

    public final void b(View view, String str) {
        X8 x8 = this.f30506H;
        if (x8 == null) {
            return;
        }
        try {
            x8.u1(new R3.b(view), str);
        } catch (RemoteException e8) {
            h.e("Unable to call setAssetView on delegate", e8);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.f30505G;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        X8 x8 = this.f30506H;
        if (x8 != null) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Pa)).booleanValue()) {
                try {
                    x8.d1(new R3.b(motionEvent));
                } catch (RemoteException e8) {
                    h.e("Unable to call handleTouchEvent on delegate", e8);
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public a getAdChoicesView() {
        a("3011");
        return null;
    }

    public final View getAdvertiserView() {
        return a("3005");
    }

    public final View getBodyView() {
        return a("3004");
    }

    public final View getCallToActionView() {
        return a("3002");
    }

    public final View getHeadlineView() {
        return a("3001");
    }

    public final View getIconView() {
        return a("3003");
    }

    public final View getImageView() {
        return a("3008");
    }

    public final b getMediaView() {
        View viewA = a("3010");
        if (viewA instanceof b) {
            return (b) viewA;
        }
        if (viewA == null) {
            return null;
        }
        h.b("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return a("3007");
    }

    public final View getStarRatingView() {
        return a("3009");
    }

    public final View getStoreView() {
        return a("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i8) {
        super.onVisibilityChanged(view, i8);
        X8 x8 = this.f30506H;
        if (x8 == null) {
            return;
        }
        try {
            x8.v1(new R3.b(view), i8);
        } catch (RemoteException e8) {
            h.e("Unable to call onVisibilityChanged on delegate", e8);
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        addView(this.f30505G);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f30505G == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(a aVar) {
        b(aVar, "3011");
    }

    public final void setAdvertiserView(View view) {
        b(view, "3005");
    }

    public final void setBodyView(View view) {
        b(view, "3004");
    }

    public final void setCallToActionView(View view) {
        b(view, "3002");
    }

    public final void setClickConfirmingView(View view) {
        X8 x8 = this.f30506H;
        if (x8 == null) {
            return;
        }
        try {
            x8.m3(new R3.b(view));
        } catch (RemoteException e8) {
            h.e("Unable to call setClickConfirmingView on delegate", e8);
        }
    }

    public final void setHeadlineView(View view) {
        b(view, "3001");
    }

    public final void setIconView(View view) {
        b(view, "3003");
    }

    public final void setImageView(View view) {
        b(view, "3008");
    }

    public final void setMediaView(b bVar) {
        X8 x8;
        b(bVar, "3010");
        if (bVar == null) {
            return;
        }
        e eVar = new e(this);
        synchronized (bVar) {
            bVar.f30494J = eVar;
            if (bVar.f30491G && (x8 = this.f30506H) != null) {
                try {
                    x8.Z(null);
                } catch (RemoteException e8) {
                    h.e("Unable to call setMediaContent on delegate", e8);
                }
            }
        }
        bVar.a(new e(this));
    }

    public void setNativeAd(NativeAd nativeAd) {
        X8 x8 = this.f30506H;
        if (x8 == null) {
            return;
        }
        try {
            x8.N0(nativeAd.d());
        } catch (RemoteException e8) {
            h.e("Unable to call setNativeAd on delegate", e8);
        }
    }

    public final void setPriceView(View view) {
        b(view, "3007");
    }

    public final void setStarRatingView(View view) {
        b(view, "3009");
    }

    public final void setStoreView(View view) {
        b(view, "3006");
    }
}
