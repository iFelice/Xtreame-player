package com.bumptech.glide;

import B0.C0041c;
import D0.U;
import F2.G;
import android.content.Context;
import android.content.ContextWrapper;
import java.util.List;
import java.util.Map;
import p032e0.u;
import y2.p;

/* JADX INFO: loaded from: classes.dex */
public final class f extends ContextWrapper {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f11524k = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p196z2.h f11525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final J3.k f11526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final G f11527c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final U f11528d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f11529e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f11530f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p f11531g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final u f11532h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11533i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public L2.f f11534j;

    public f(Context context, p196z2.h hVar, C0041c c0041c, G g8, U u7, p132r.f fVar, List list, p pVar, u uVar, int i8) {
        super(context.getApplicationContext());
        this.f11525a = hVar;
        this.f11527c = g8;
        this.f11528d = u7;
        this.f11529e = list;
        this.f11530f = fVar;
        this.f11531g = pVar;
        this.f11532h = uVar;
        this.f11533i = i8;
        this.f11526b = new J3.k(c0041c);
    }

    public final synchronized L2.f a() {
        try {
            if (this.f11534j == null) {
                this.f11528d.getClass();
                L2.f fVar = new L2.f();
                fVar.f4649Z = true;
                this.f11534j = fVar;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f11534j;
    }

    public final j b() {
        return (j) this.f11526b.get();
    }
}
