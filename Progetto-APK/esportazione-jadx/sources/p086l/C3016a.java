package p086l;

import F2.G;
import N.V;
import P0.e;
import P0.g;
import W0.L;
import W0.s;
import androidx.appcompat.widget.ActionBarContextView;
import java.util.ArrayList;
import java.util.Objects;
import p002a1.a;
import p094m0.C3136t;
import p094m0.O;
import p095m1.d;
import p111o1.i;
import p126q1.h;
import p126q1.k;

/* JADX INFO: renamed from: l.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3016a implements V, g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f26217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f26219c = new G(3);

    @Override // N.V
    public final void a() {
        this.f26217a = true;
    }

    @Override // N.V
    public final void b() {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.f26217a = false;
    }

    @Override // N.V
    public final void c() {
        if (this.f26217a) {
            return;
        }
        ActionBarContextView actionBarContextView = (ActionBarContextView) this.f26219c;
        actionBarContextView.f8774L = null;
        super/*android.view.ViewGroup*/.setVisibility(this.f26218b);
    }

    public final e d(int i8, C3136t c3136t, boolean z7, ArrayList arrayList, L l4) {
        s iVar;
        String str = c3136t.f27040n;
        boolean zN = O.n(str);
        Object obj = this.f26219c;
        if (!zN) {
            if (str != null && (str.startsWith("video/webm") || str.startsWith("audio/webm") || str.startsWith("application/webm") || str.startsWith("video/x-matroska") || str.startsWith("audio/x-matroska") || str.startsWith("application/x-matroska"))) {
                iVar = new d(this.f26217a ? 1 : 3, (k) obj);
            } else if (Objects.equals(str, "image/jpeg")) {
                iVar = new a(1);
            } else {
                if (Objects.equals(str, "image/png")) {
                    iVar = new a(1, 0);
                } else {
                    int i9 = z7 ? 4 : 0;
                    if (!this.f26217a) {
                        i9 |= 32;
                    }
                    iVar = new i((k) obj, i9 | i.a(this.f26218b), null, arrayList, l4);
                }
            }
        } else {
            if (!this.f26217a) {
                return null;
            }
            iVar = new h(((G) ((k) obj)).x(c3136t), c3136t);
        }
        return new e(iVar, i8, c3136t);
    }
}
