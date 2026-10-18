package androidx.media3.ui;

import D1.C0138c;
import D1.C0139d;
import D1.N;
import D1.V;
import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p110o0.a;
import p110o0.b;
import p110o0.f;

/* JADX INFO: loaded from: classes.dex */
public final class SubtitleView extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public List f9511G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public C0139d f9512H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f9513I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public float f9514J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public float f9515K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f9516L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f9517M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f9518N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public N f9519O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public View f9520P;

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9511G = Collections.emptyList();
        this.f9512H = C0139d.f2132g;
        this.f9513I = 0;
        this.f9514J = 0.0533f;
        this.f9515K = 0.08f;
        this.f9516L = true;
        this.f9517M = true;
        C0138c c0138c = new C0138c(context);
        this.f9519O = c0138c;
        this.f9520P = c0138c;
        addView(c0138c);
        this.f9518N = 1;
    }

    private List<b> getCuesWithStylingPreferencesApplied() {
        if (this.f9516L && this.f9517M) {
            return this.f9511G;
        }
        ArrayList arrayList = new ArrayList(this.f9511G.size());
        for (int i8 = 0; i8 < this.f9511G.size(); i8++) {
            a aVarA = ((b) this.f9511G.get(i8)).a();
            if (!this.f9516L) {
                aVarA.f27610n = false;
                CharSequence charSequence = aVarA.f27597a;
                if (charSequence instanceof Spanned) {
                    if (!(charSequence instanceof Spannable)) {
                        aVarA.f27597a = SpannableString.valueOf(charSequence);
                        aVarA.f27598b = null;
                    }
                    CharSequence charSequence2 = aVarA.f27597a;
                    charSequence2.getClass();
                    Spannable spannable = (Spannable) charSequence2;
                    for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                        if (!(obj instanceof f)) {
                            spannable.removeSpan(obj);
                        }
                    }
                }
                H1.v(aVarA);
            } else if (!this.f9517M) {
                H1.v(aVarA);
            }
            arrayList.add(aVarA.a());
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private C0139d getUserCaptionStyle() {
        CaptioningManager captioningManager;
        boolean zIsInEditMode = isInEditMode();
        C0139d c0139d = C0139d.f2132g;
        if (zIsInEditMode || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return c0139d;
        }
        CaptioningManager.CaptionStyle userStyle = captioningManager.getUserStyle();
        return new C0139d(userStyle.hasForegroundColor() ? userStyle.foregroundColor : -1, userStyle.hasBackgroundColor() ? userStyle.backgroundColor : -16777216, userStyle.hasWindowColor() ? userStyle.windowColor : 0, userStyle.hasEdgeType() ? userStyle.edgeType : 0, userStyle.hasEdgeColor() ? userStyle.edgeColor : -1, userStyle.getTypeface());
    }

    private <T extends View & N> void setView(T t7) {
        removeView(this.f9520P);
        View view = this.f9520P;
        if (view instanceof V) {
            ((V) view).f2118H.destroy();
        }
        this.f9520P = t7;
        this.f9519O = t7;
        addView(t7);
    }

    public final void a() {
        setStyle(getUserCaptionStyle());
    }

    public final void b() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public final void c() {
        this.f9519O.a(getCuesWithStylingPreferencesApplied(), this.f9512H, this.f9514J, this.f9513I, this.f9515K);
    }

    public void setApplyEmbeddedFontSizes(boolean z7) {
        this.f9517M = z7;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z7) {
        this.f9516L = z7;
        c();
    }

    public void setBottomPaddingFraction(float f8) {
        this.f9515K = f8;
        c();
    }

    public void setCues(List<b> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f9511G = list;
        c();
    }

    public void setFractionalTextSize(float f8) {
        this.f9513I = 0;
        this.f9514J = f8;
        c();
    }

    public void setStyle(C0139d c0139d) {
        this.f9512H = c0139d;
        c();
    }

    public void setViewType(int i8) {
        if (this.f9518N == i8) {
            return;
        }
        if (i8 == 1) {
            setView(new C0138c(getContext()));
        } else {
            if (i8 != 2) {
                throw new IllegalArgumentException();
            }
            setView(new V(getContext()));
        }
        this.f9518N = i8;
    }
}
