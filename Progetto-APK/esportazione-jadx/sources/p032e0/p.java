package p032e0;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import p096m2.u;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class p extends Service implements m {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final u f24758G = new u(this);

    @Override // p032e0.m
    public final o h() {
        return (o) this.f24758G.f27278H;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        q0.h(intent, "intent");
        this.f24758G.N(EnumC2981i.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f24758G.N(EnumC2981i.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        EnumC2981i enumC2981i = EnumC2981i.ON_STOP;
        u uVar = this.f24758G;
        uVar.N(enumC2981i);
        uVar.N(EnumC2981i.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i8) {
        this.f24758G.N(EnumC2981i.ON_START);
        super.onStart(intent, i8);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i8, int i9) {
        return super.onStartCommand(intent, i8, i9);
    }
}
