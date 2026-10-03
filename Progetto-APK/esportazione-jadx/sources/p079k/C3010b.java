package p079k;

import androidx.appcompat.view.menu.ActionMenuItemView;
import p086l.C0;
import p086l.C3032i;
import p086l.C3034j;

/* JADX INFO: renamed from: k.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3010b extends C0 {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final /* synthetic */ ActionMenuItemView f25764P;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3010b(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f25764P = actionMenuItemView;
    }

    @Override // p086l.C0
    public final E b() {
        C3032i c3032i;
        AbstractC3011c abstractC3011c = this.f25764P.f8735S;
        if (abstractC3011c == null || (c3032i = ((C3034j) abstractC3011c).f26269a.f26314Z) == null) {
            return null;
        }
        return c3032i.a();
    }

    @Override // p086l.C0
    public final boolean c() {
        E eB;
        ActionMenuItemView actionMenuItemView = this.f25764P;
        n nVar = actionMenuItemView.f8733Q;
        return nVar != null && nVar.a(actionMenuItemView.f8730N) && (eB = b()) != null && eB.a();
    }
}
