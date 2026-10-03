package p096m2;

import P1.x;
import p079k.AbstractC3012d;

/* JADX INFO: loaded from: classes.dex */
public final class n extends AbstractC3012d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f27235d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n(x xVar, int i8) {
        super(xVar);
        this.f27235d = i8;
    }

    @Override // p079k.AbstractC3012d
    public final String e() {
        switch (this.f27235d) {
            case 0:
                return "DELETE from WorkProgress where work_spec_id=?";
            default:
                return "DELETE FROM WorkProgress";
        }
    }
}
