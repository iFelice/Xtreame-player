package I6;

import C6.p;
import java.util.Iterator;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements H6.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f4030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p f4033d;

    public c(CharSequence charSequence, int i8, int i9, j jVar) {
        q0.h(charSequence, "input");
        this.f4030a = charSequence;
        this.f4031b = i8;
        this.f4032c = i9;
        this.f4033d = jVar;
    }

    @Override // H6.c
    public final Iterator iterator() {
        return new b(this);
    }
}
