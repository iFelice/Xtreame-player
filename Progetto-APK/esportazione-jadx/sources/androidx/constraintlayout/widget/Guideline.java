package androidx.constraintlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import p193z.e;

/* JADX INFO: loaded from: classes.dex */
public class Guideline extends View {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f8965G;

    public Guideline(Context context) {
        super(context);
        this.f8965G = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z7) {
        this.f8965G = z7;
    }

    public void setGuidelineBegin(int i8) {
        e eVar = (e) getLayoutParams();
        if (this.f8965G && eVar.f31506a == i8) {
            return;
        }
        eVar.f31506a = i8;
        setLayoutParams(eVar);
    }

    public void setGuidelineEnd(int i8) {
        e eVar = (e) getLayoutParams();
        if (this.f8965G && eVar.f31508b == i8) {
            return;
        }
        eVar.f31508b = i8;
        setLayoutParams(eVar);
    }

    public void setGuidelinePercent(float f8) {
        e eVar = (e) getLayoutParams();
        if (this.f8965G && eVar.f31510c == f8) {
            return;
        }
        eVar.f31510c = f8;
        setLayoutParams(eVar);
    }

    @Override // android.view.View
    public void setVisibility(int i8) {
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8965G = true;
        super.setVisibility(8);
    }
}
