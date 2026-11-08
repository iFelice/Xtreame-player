package p145s4;

import N.N;
import android.animation.ValueAnimator;
import java.util.WeakHashMap;
import p001a0.b;
import p068i4.a;

/* JADX INFO: loaded from: classes.dex */
public final class c implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f30091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f30092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f30093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f30094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f30095e;

    public c(e eVar, int i8, int i9, int i10, int i11) {
        this.f30095e = eVar;
        this.f30091a = i8;
        this.f30092b = i9;
        this.f30093c = i10;
        this.f30094d = i11;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        b bVar = a.f25574a;
        int i8 = this.f30092b;
        int i9 = this.f30091a;
        int iRound = Math.round((i8 - i9) * animatedFraction) + i9;
        int i10 = this.f30094d;
        int i11 = this.f30093c;
        int iRound2 = Math.round(animatedFraction * (i10 - i11)) + i11;
        e eVar = this.f30095e;
        if (iRound == eVar.f30104M && iRound2 == eVar.f30105N) {
            return;
        }
        eVar.f30104M = iRound;
        eVar.f30105N = iRound2;
        WeakHashMap weakHashMap = N.f4843a;
        eVar.postInvalidateOnAnimation();
    }
}
