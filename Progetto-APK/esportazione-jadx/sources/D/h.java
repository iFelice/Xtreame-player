package D;

import N.InterfaceC0264m;
import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.google.android.gms.internal.measurement.AbstractC2617p2;
import p032e0.A;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class h extends Activity implements p032e0.m, InterfaceC0264m {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p032e0.o f1693G = new p032e0.o(this);

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        q0.h(keyEvent, "event");
        View decorView = getWindow().getDecorView();
        q0.g(decorView, "window.decorView");
        if (AbstractC2617p2.e(decorView, keyEvent)) {
            return true;
        }
        return AbstractC2617p2.f(this, decorView, this, keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        q0.h(keyEvent, "event");
        View decorView = getWindow().getDecorView();
        q0.g(decorView, "window.decorView");
        if (AbstractC2617p2.e(decorView, keyEvent)) {
            return true;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // N.InterfaceC0264m
    public final boolean e(KeyEvent keyEvent) {
        q0.h(keyEvent, "event");
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i8 = A.f24712G;
        U4.b.c0(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        q0.h(bundle, "outState");
        this.f1693G.h();
        super.onSaveInstanceState(bundle);
    }
}
