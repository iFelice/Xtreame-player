package p096m2;

import P1.x;
import p079k.AbstractC3012d;

/* JADX INFO: loaded from: classes.dex */
public final class h extends AbstractC3012d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f27220d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f27221e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(Object obj, x xVar, int i8) {
        super(xVar);
        this.f27220d = i8;
        this.f27221e = obj;
    }

    @Override // p079k.AbstractC3012d
    public final String e() {
        switch (this.f27220d) {
            case 0:
                return "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?";
            case 1:
                return "DELETE FROM SystemIdInfo where work_spec_id=?";
            default:
                return "DELETE FROM worktag WHERE work_spec_id=?";
        }
    }
}
