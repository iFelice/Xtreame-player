package D1;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: renamed from: D1.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0138c extends View implements N {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f2126G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public List f2127H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f2128I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public float f2129J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public C0139d f2130K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public float f2131L;

    public C0138c(Context context) {
        super(context, null);
        this.f2126G = new ArrayList();
        this.f2127H = Collections.emptyList();
        this.f2128I = 0;
        this.f2129J = 0.0533f;
        this.f2130K = C0139d.f2132g;
        this.f2131L = 0.08f;
    }

    @Override // D1.N
    public final void a(List list, C0139d c0139d, float f8, int i8, float f9) {
        this.f2127H = list;
        this.f2130K = c0139d;
        this.f2129J = f8;
        this.f2128I = i8;
        this.f2131L = f9;
        while (true) {
            ArrayList arrayList = this.f2126G;
            if (arrayList.size() >= list.size()) {
                invalidate();
                return;
            }
            arrayList.add(new M(getContext()));
        }
    }

    /* JADX WARN: Code duplicated, block: B:198:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:200:0x04c5  */
    /* JADX WARN: Code duplicated, block: B:202:0x04c8  */
    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        TextPaint textPaint;
        int i13;
        int i14;
        Canvas canvas2;
        boolean z7;
        float f8;
        int i15;
        float f9;
        int i16;
        int iMax;
        int iMin;
        int iRound;
        C0138c c0138c = this;
        Canvas canvas3 = canvas;
        List list = c0138c.f2127H;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i17 = paddingBottom - paddingTop;
        float fW = H1.w(c0138c.f2129J, c0138c.f2128I, height, i17);
        if (fW <= 0.0f) {
            return;
        }
        int size = list.size();
        int i18 = 0;
        while (i18 < size) {
            p110o0.b bVarA = (p110o0.b) list.get(i18);
            if (bVarA.f27650p != Integer.MIN_VALUE) {
                p110o0.a aVarA = bVarA.a();
                aVarA.f27604h = -3.4028235E38f;
                aVarA.f27605i = Integer.MIN_VALUE;
                aVarA.f27599c = null;
                int i19 = bVarA.f27640f;
                float f10 = bVarA.f27639e;
                if (i19 == 0) {
                    aVarA.f27601e = 1.0f - f10;
                    aVarA.f27602f = 0;
                } else {
                    aVarA.f27601e = (-f10) - 1.0f;
                    aVarA.f27602f = 1;
                }
                int i20 = bVarA.f27641g;
                if (i20 == 0) {
                    aVarA.f27603g = 2;
                } else if (i20 == 2) {
                    aVarA.f27603g = 0;
                }
                bVarA = aVarA.a();
            }
            float fW2 = H1.w(bVarA.f27649o, bVarA.f27648n, height, i17);
            M m7 = (M) c0138c.f2126G.get(i18);
            C0139d c0139d = c0138c.f2130K;
            List list2 = list;
            float f11 = c0138c.f2131L;
            m7.getClass();
            Bitmap bitmap = bVarA.f27638d;
            int i21 = height;
            int i22 = i17;
            boolean z8 = bitmap == null;
            CharSequence charSequence = bVarA.f27635a;
            if (z8) {
                if (TextUtils.isEmpty(charSequence)) {
                    canvas2 = canvas3;
                    i14 = paddingLeft;
                    i12 = paddingTop;
                    i11 = width;
                    i13 = paddingBottom;
                    i8 = size;
                    i10 = i18;
                } else {
                    i8 = size;
                    i9 = bVarA.f27646l ? bVarA.f27647m : c0139d.f2135c;
                }
                i18 = i10 + 1;
                canvas3 = canvas2;
                list = list2;
                height = i21;
                i17 = i22;
                size = i8;
                fW = fW;
                paddingBottom = i13;
                width = i11;
                paddingTop = i12;
                paddingLeft = i14;
                c0138c = this;
            } else {
                i8 = size;
                i9 = -16777216;
            }
            i10 = i18;
            CharSequence charSequence2 = m7.f2096i;
            TextPaint textPaint2 = m7.f2093f;
            boolean z9 = z8;
            float f12 = bVarA.f27645k;
            int i23 = paddingBottom;
            float f13 = bVarA.f27644j;
            i11 = width;
            int i24 = bVarA.f27643i;
            i12 = paddingTop;
            float f14 = bVarA.f27642h;
            int i25 = paddingLeft;
            int i26 = bVarA.f27641g;
            int i27 = bVarA.f27640f;
            float f15 = bVarA.f27639e;
            Layout.Alignment alignment = bVarA.f27636b;
            if ((charSequence2 == charSequence || (charSequence2 != null && charSequence2.equals(charSequence))) && Objects.equals(m7.f2097j, alignment) && m7.f2098k == bitmap && m7.f2099l == f15 && m7.f2100m == i27) {
                if (Integer.valueOf(m7.f2101n).equals(Integer.valueOf(i26)) && m7.f2102o == f14 && Integer.valueOf(m7.f2103p).equals(Integer.valueOf(i24)) && m7.f2104q == f13 && m7.f2105r == f12 && m7.f2106s == c0139d.f2133a && m7.f2107t == c0139d.f2134b && m7.f2108u == i9 && m7.f2110w == c0139d.f2136d && m7.f2109v == c0139d.f2137e && Objects.equals(textPaint2.getTypeface(), c0139d.f2138f) && m7.f2111x == fW && m7.f2112y == fW2 && m7.f2113z == f11) {
                    if (m7.f2078A == i25) {
                        if (m7.f2079B != i12) {
                            i12 = i12;
                        } else if (m7.f2080C != i11) {
                            i12 = i12;
                            i11 = i11;
                        } else if (m7.f2081D == i23) {
                            i12 = i12;
                            i11 = i11;
                            i13 = i23;
                            i14 = i25;
                            m7.a(canvas, z9);
                            canvas2 = canvas;
                            i18 = i10 + 1;
                            canvas3 = canvas2;
                            list = list2;
                            height = i21;
                            i17 = i22;
                            size = i8;
                            fW = fW;
                            paddingBottom = i13;
                            width = i11;
                            paddingTop = i12;
                            paddingLeft = i14;
                            c0138c = this;
                        } else {
                            i12 = i12;
                            i11 = i11;
                            i23 = i23;
                        }
                        i25 = i25;
                        textPaint = textPaint2;
                    } else {
                        i25 = i25;
                    }
                }
                textPaint = textPaint2;
            } else {
                textPaint = textPaint2;
            }
            m7.f2096i = charSequence;
            m7.f2097j = alignment;
            m7.f2098k = bitmap;
            m7.f2099l = f15;
            m7.f2100m = i27;
            m7.f2101n = i26;
            m7.f2102o = f14;
            m7.f2103p = i24;
            m7.f2104q = f13;
            m7.f2105r = f12;
            m7.f2106s = c0139d.f2133a;
            m7.f2107t = c0139d.f2134b;
            m7.f2108u = i9;
            m7.f2110w = c0139d.f2136d;
            m7.f2109v = c0139d.f2137e;
            textPaint.setTypeface(c0139d.f2138f);
            m7.f2111x = fW;
            m7.f2112y = fW2;
            m7.f2113z = f11;
            int i28 = i25;
            m7.f2078A = i28;
            int i29 = i12;
            m7.f2079B = i29;
            i11 = i11;
            m7.f2080C = i11;
            i13 = i23;
            m7.f2081D = i13;
            if (z9 != 0) {
                m7.f2096i.getClass();
                CharSequence charSequence3 = m7.f2096i;
                SpannableStringBuilder spannableStringBuilder = charSequence3 instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence3 : new SpannableStringBuilder(m7.f2096i);
                int i30 = m7.f2080C - m7.f2078A;
                int i31 = m7.f2081D - m7.f2079B;
                textPaint.setTextSize(m7.f2111x);
                int i32 = (int) ((m7.f2111x * 0.125f) + 0.5f);
                int i33 = i32 * 2;
                int i34 = i30 - i33;
                float f16 = m7.f2104q;
                if (f16 != -3.4028235E38f) {
                    i34 = (int) (i34 * f16);
                }
                if (i34 <= 0) {
                    p117p0.x.f("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
                    i14 = i28;
                    z7 = z9;
                    i12 = i29;
                    i13 = i13;
                    i11 = i11;
                    fW = fW;
                } else {
                    i14 = i28;
                    i12 = i29;
                    if (m7.f2112y > 0.0f) {
                        i16 = 0;
                        spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) m7.f2112y), 0, spannableStringBuilder.length(), 16711680);
                    } else {
                        i16 = 0;
                    }
                    SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
                    if (m7.f2110w == 1) {
                        ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(i16, spannableStringBuilder2.length(), ForegroundColorSpan.class);
                        int i35 = 0;
                        for (int length = foregroundColorSpanArr.length; i35 < length; length = length) {
                            spannableStringBuilder2.removeSpan(foregroundColorSpanArr[i35]);
                            i35++;
                        }
                    }
                    if (Color.alpha(m7.f2107t) > 0) {
                        int i36 = m7.f2110w;
                        if (i36 == 0 || i36 == 2) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(m7.f2107t), 0, spannableStringBuilder.length(), 16711680);
                        } else {
                            spannableStringBuilder2.setSpan(new BackgroundColorSpan(m7.f2107t), 0, spannableStringBuilder2.length(), 16711680);
                        }
                    }
                    Layout.Alignment alignment2 = m7.f2097j;
                    if (alignment2 == null) {
                        alignment2 = Layout.Alignment.ALIGN_CENTER;
                    }
                    StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, textPaint, i34, alignment2, m7.f2091d, m7.f2092e, true);
                    m7.f2082E = staticLayout;
                    int height2 = staticLayout.getHeight();
                    int lineCount = m7.f2082E.getLineCount();
                    z7 = z9;
                    int iMax2 = 0;
                    int i37 = 0;
                    while (i37 < lineCount) {
                        iMax2 = Math.max((int) Math.ceil(m7.f2082E.getLineWidth(i37)), iMax2);
                        i37++;
                        lineCount = lineCount;
                        alignment2 = alignment2;
                    }
                    Layout.Alignment alignment3 = alignment2;
                    if (m7.f2104q == -3.4028235E38f || iMax2 >= i34) {
                        i34 = iMax2;
                    }
                    int i38 = i34 + i33;
                    float f17 = m7.f2102o;
                    if (f17 != -3.4028235E38f) {
                        int iRound2 = Math.round(i30 * f17);
                        int i39 = m7.f2078A;
                        int i40 = iRound2 + i39;
                        int i41 = m7.f2103p;
                        if (i41 == 1) {
                            i40 = ((i40 * 2) - i38) / 2;
                        } else if (i41 == 2) {
                            i40 -= i38;
                        }
                        iMax = Math.max(i40, i39);
                        iMin = Math.min(i38 + iMax, m7.f2080C);
                    } else {
                        iMax = m7.f2078A + ((i30 - i38) / 2);
                        iMin = iMax + i38;
                    }
                    int i42 = iMin - iMax;
                    if (i42 <= 0) {
                        p117p0.x.f("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
                    } else {
                        float f18 = m7.f2099l;
                        if (f18 != -3.4028235E38f) {
                            if (m7.f2100m == 0) {
                                iRound = Math.round(i31 * f18) + m7.f2079B;
                                int i43 = m7.f2101n;
                                if (i43 == 2) {
                                    iRound -= height2;
                                } else if (i43 == 1) {
                                    iRound = ((iRound * 2) - height2) / 2;
                                }
                            } else {
                                int lineBottom = m7.f2082E.getLineBottom(0) - m7.f2082E.getLineTop(0);
                                float f19 = m7.f2099l;
                                iRound = f19 >= 0.0f ? Math.round(f19 * lineBottom) + m7.f2079B : (Math.round((f19 + 1.0f) * lineBottom) + m7.f2081D) - height2;
                            }
                            int i44 = iRound + height2;
                            int i45 = m7.f2081D;
                            if (i44 > i45) {
                                iRound = i45 - height2;
                            } else {
                                int i46 = m7.f2079B;
                                if (iRound < i46) {
                                    iRound = i46;
                                }
                            }
                        } else {
                            iRound = (m7.f2081D - height2) - ((int) (i31 * m7.f2113z));
                        }
                        TextPaint textPaint3 = textPaint;
                        m7.f2082E = new StaticLayout(spannableStringBuilder, textPaint3, i42, alignment3, m7.f2091d, m7.f2092e, true);
                        m7.f2083F = new StaticLayout(spannableStringBuilder2, textPaint3, i42, alignment3, m7.f2091d, m7.f2092e, true);
                        m7.f2084G = iMax;
                        m7.f2085H = iRound;
                        m7.f2086I = i32;
                    }
                }
            } else {
                i14 = i28;
                z7 = z9;
                i12 = i29;
                i13 = i13;
                i11 = i11;
                fW = fW;
                m7.f2098k.getClass();
                Bitmap bitmap2 = m7.f2098k;
                int i47 = m7.f2080C;
                int i48 = m7.f2078A;
                int i49 = m7.f2081D;
                int i50 = m7.f2079B;
                float f20 = i47 - i48;
                float f21 = (m7.f2102o * f20) + i48;
                float f22 = i49 - i50;
                float f23 = (m7.f2099l * f22) + i50;
                int iRound3 = Math.round(f20 * m7.f2104q);
                float f24 = m7.f2105r;
                int iRound4 = f24 != -3.4028235E38f ? Math.round(f22 * f24) : Math.round((bitmap2.getHeight() / bitmap2.getWidth()) * iRound3);
                int i51 = m7.f2103p;
                if (i51 == 2) {
                    f8 = iRound3;
                } else {
                    if (i51 == 1) {
                        f8 = iRound3 / 2;
                    }
                    int iRound5 = Math.round(f21);
                    i15 = m7.f2101n;
                    if (i15 == 2) {
                        f9 = iRound4;
                    } else {
                        if (i15 == 1) {
                            f9 = iRound4 / 2;
                        }
                        int iRound6 = Math.round(f23);
                        m7.f2087J = new Rect(iRound5, iRound6, iRound3 + iRound5, iRound4 + iRound6);
                    }
                    f23 -= f9;
                    int iRound7 = Math.round(f23);
                    m7.f2087J = new Rect(iRound5, iRound7, iRound3 + iRound5, iRound4 + iRound7);
                }
                f21 -= f8;
                int iRound8 = Math.round(f21);
                i15 = m7.f2101n;
                if (i15 == 2) {
                    f9 = iRound4;
                } else {
                    if (i15 == 1) {
                        f9 = iRound4 / 2;
                    }
                    int iRound9 = Math.round(f23);
                    m7.f2087J = new Rect(iRound8, iRound9, iRound3 + iRound8, iRound4 + iRound9);
                }
                f23 -= f9;
                int iRound10 = Math.round(f23);
                m7.f2087J = new Rect(iRound8, iRound10, iRound3 + iRound8, iRound4 + iRound10);
            }
            canvas2 = canvas;
            m7.a(canvas2, z7);
            i18 = i10 + 1;
            canvas3 = canvas2;
            list = list2;
            height = i21;
            i17 = i22;
            size = i8;
            fW = fW;
            paddingBottom = i13;
            width = i11;
            paddingTop = i12;
            paddingLeft = i14;
            c0138c = this;
        }
    }
}
