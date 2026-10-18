package V;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class f implements KeyListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KeyListener f7002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final U4.b f7003b;

    public f(KeyListener keyListener) {
        U4.b bVar = new U4.b(9);
        this.f7002a = keyListener;
        this.f7003b = bVar;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i8) {
        this.f7002a.clearMetaKeyState(view, editable, i8);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.f7002a.getInputType();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:17:? A[RETURN, SYNTHETIC] */
    @Override // android.text.method.KeyListener
    public final boolean onKeyDown(View view, Editable editable, int i8, KeyEvent keyEvent) {
        boolean zN;
        this.f7003b.getClass();
        Object obj = U.a.f6622a;
        if (i8 != 67) {
            if (i8 == 112) {
                zN = com.bumptech.glide.c.n(editable, keyEvent, true);
            }
            if (this.f7002a.onKeyDown(view, editable, i8, keyEvent)) {
                return true;
            }
            return false;
        }
        zN = com.bumptech.glide.c.n(editable, keyEvent, false);
        if (zN) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            return true;
        }
        if (this.f7002a.onKeyDown(view, editable, i8, keyEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f7002a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i8, KeyEvent keyEvent) {
        return this.f7002a.onKeyUp(view, editable, i8, keyEvent);
    }
}
