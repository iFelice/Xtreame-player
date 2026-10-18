package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.transition.FadeAndShortSlide;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class Q1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile p190y4.j f22984a;

    public static p135r2.l c(Context context) {
        p096m2.u uVar = new p096m2.u(new p143s2.f());
        p143s2.d dVar = new p143s2.d(new p096m2.c(context.getApplicationContext()));
        D0.U u7 = new D0.U(new Handler(Looper.getMainLooper()));
        p135r2.l lVar = new p135r2.l();
        lVar.f29826a = new AtomicInteger();
        lVar.f29827b = new HashSet();
        lVar.f29828c = new PriorityBlockingQueue();
        lVar.f29829d = new PriorityBlockingQueue();
        lVar.f29830e = new ArrayList();
        lVar.f29831f = new ArrayList();
        lVar.f29832g = dVar;
        lVar.f29833h = uVar;
        lVar.f29835j = new p135r2.g[4];
        lVar.f29834i = u7;
        p135r2.c cVar = (p135r2.c) lVar.f29836k;
        if (cVar != null) {
            cVar.b();
        }
        for (p135r2.g gVar : (p135r2.g[]) lVar.f29835j) {
            if (gVar != null) {
                gVar.f29803K = true;
                gVar.interrupt();
            }
        }
        p135r2.c cVar2 = new p135r2.c((PriorityBlockingQueue) lVar.f29828c, (PriorityBlockingQueue) lVar.f29829d, (p143s2.d) lVar.f29832g, (D0.U) lVar.f29834i);
        lVar.f29836k = cVar2;
        cVar2.start();
        for (int i8 = 0; i8 < ((p135r2.g[]) lVar.f29835j).length; i8++) {
            p135r2.g gVar2 = new p135r2.g((PriorityBlockingQueue) lVar.f29829d, (p096m2.u) lVar.f29833h, (p143s2.d) lVar.f29832g, (D0.U) lVar.f29834i);
            ((p135r2.g[]) lVar.f29835j)[i8] = gVar2;
            gVar2.start();
        }
        return lVar;
    }

    public float a(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        return view.getTranslationX();
    }

    public float b(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        return view.getTranslationY();
    }
}
