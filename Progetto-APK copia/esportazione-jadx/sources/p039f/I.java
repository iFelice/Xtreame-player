package p039f;

import J6.r;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.appcompat.widget.ContentFrameLayout;
import p071j.d;

/* JADX INFO: loaded from: classes.dex */
public final class I extends ContentFrameLayout {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ K f24907O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I(K k8, d dVar) {
        super(dVar, null);
        this.f24907O = k8;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f24907O.t(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int x7 = (int) motionEvent.getX();
            int y7 = (int) motionEvent.getY();
            if (x7 < -5 || y7 < -5 || x7 > getWidth() + 5 || y7 > getHeight() + 5) {
                K k8 = this.f24907O;
                k8.r(k8.z(0), true);
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void setBackgroundResource(int i8) {
        setBackgroundDrawable(r.h(getContext(), i8));
    }
}
