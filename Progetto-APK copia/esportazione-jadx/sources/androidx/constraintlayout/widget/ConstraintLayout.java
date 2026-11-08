package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import com.google.protobuf.U2;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import org.videolan.libvlc.interfaces.IMediaList;
import p096m2.u;
import p156u.d;
import p170w.e;
import p170w.g;
import p170w.i;
import p178x.b;
import p178x.k;
import p178x.m;
import p178x.p;
import p193z.a;
import p193z.c;
import p193z.f;
import p193z.h;
import p193z.j;
import p193z.n;
import p193z.o;
import p193z.r;
import p193z.s;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static s f8949V;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final SparseArray f8950G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f8951H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final e f8952I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f8953J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f8954K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f8955L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f8956M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f8957N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f8958O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public o f8959P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final h f8960Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f8961R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public HashMap f8962S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final SparseArray f8963T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final f f8964U;

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        SparseArray sparseArray = new SparseArray();
        this.f8950G = sparseArray;
        this.f8951H = new ArrayList(4);
        e eVar = new e();
        eVar.f30889p0 = new ArrayList();
        eVar.f30870q0 = new u(eVar);
        p178x.e eVar2 = new p178x.e();
        eVar2.f31127a = true;
        eVar2.f31128b = true;
        eVar2.f31131e = new ArrayList();
        eVar2.f31132f = new ArrayList();
        eVar2.f31134h = null;
        eVar2.f31135i = new b();
        eVar2.f31133g = new ArrayList();
        eVar2.f31129c = eVar;
        eVar2.f31130d = eVar;
        eVar.f30871r0 = eVar2;
        eVar.f30873t0 = null;
        eVar.f30874u0 = false;
        eVar.f30875v0 = new d();
        eVar.f30878y0 = 0;
        eVar.f30879z0 = 0;
        eVar.f30859A0 = new p170w.b[4];
        eVar.f30860B0 = new p170w.b[4];
        eVar.f30861C0 = 257;
        eVar.f30862D0 = false;
        eVar.f30863E0 = false;
        eVar.f30864F0 = null;
        eVar.f30865G0 = null;
        eVar.f30866H0 = null;
        eVar.f30867I0 = null;
        eVar.f30868J0 = new HashSet();
        eVar.f30869K0 = new b();
        this.f8952I = eVar;
        this.f8953J = 0;
        this.f8954K = 0;
        this.f8955L = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        this.f8956M = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        this.f8957N = true;
        this.f8958O = 257;
        this.f8959P = null;
        this.f8960Q = null;
        this.f8961R = -1;
        this.f8962S = new HashMap();
        this.f8963T = new SparseArray();
        f fVar = new f(this, this);
        this.f8964U = fVar;
        eVar.f30827e0 = this;
        eVar.f30873t0 = fVar;
        eVar2.f31134h = fVar;
        sparseArray.put(getId(), this);
        this.f8959P = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, r.f31688b, 0, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i8 = 0; i8 < indexCount; i8++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i8);
                if (index == 16) {
                    this.f8953J = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f8953J);
                } else if (index == 17) {
                    this.f8954K = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f8954K);
                } else if (index == 14) {
                    this.f8955L = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f8955L);
                } else if (index == 15) {
                    this.f8956M = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f8956M);
                } else if (index == 113) {
                    this.f8958O = typedArrayObtainStyledAttributes.getInt(index, this.f8958O);
                } else if (index == 56) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            this.f8960Q = new h(getContext(), this, resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f8960Q = null;
                        }
                    }
                } else if (index == 34) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        o oVar = new o();
                        this.f8959P = oVar;
                        oVar.d(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f8959P = null;
                    }
                    this.f8961R = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        eVar.f30861C0 = this.f8958O;
        d.f30335q = eVar.S(IMediaList.Event.ItemAdded);
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public static s getSharedValues() {
        if (f8949V == null) {
            s sVar = new s();
            new SparseIntArray();
            new HashMap();
            f8949V = sVar;
        }
        return f8949V;
    }

    public static p193z.e h() {
        p193z.e eVar = new p193z.e(-2, -2);
        eVar.f31506a = -1;
        eVar.f31508b = -1;
        eVar.f31510c = -1.0f;
        eVar.f31512d = true;
        eVar.f31514e = -1;
        eVar.f31516f = -1;
        eVar.f31518g = -1;
        eVar.f31520h = -1;
        eVar.f31522i = -1;
        eVar.f31524j = -1;
        eVar.f31526k = -1;
        eVar.f31528l = -1;
        eVar.f31530m = -1;
        eVar.f31532n = -1;
        eVar.f31534o = -1;
        eVar.f31536p = -1;
        eVar.f31538q = 0;
        eVar.f31539r = 0.0f;
        eVar.f31540s = -1;
        eVar.f31541t = -1;
        eVar.f31542u = -1;
        eVar.f31543v = -1;
        eVar.f31544w = Integer.MIN_VALUE;
        eVar.f31545x = Integer.MIN_VALUE;
        eVar.f31546y = Integer.MIN_VALUE;
        eVar.f31547z = Integer.MIN_VALUE;
        eVar.f31480A = Integer.MIN_VALUE;
        eVar.f31481B = Integer.MIN_VALUE;
        eVar.f31482C = Integer.MIN_VALUE;
        eVar.f31483D = 0;
        eVar.f31484E = 0.5f;
        eVar.f31485F = 0.5f;
        eVar.f31486G = null;
        eVar.f31487H = -1.0f;
        eVar.f31488I = -1.0f;
        eVar.f31489J = 0;
        eVar.f31490K = 0;
        eVar.f31491L = 0;
        eVar.f31492M = 0;
        eVar.f31493N = 0;
        eVar.f31494O = 0;
        eVar.f31495P = 0;
        eVar.f31496Q = 0;
        eVar.f31497R = 1.0f;
        eVar.f31498S = 1.0f;
        eVar.f31499T = -1;
        eVar.f31500U = -1;
        eVar.f31501V = -1;
        eVar.f31502W = false;
        eVar.f31503X = false;
        eVar.f31504Y = null;
        eVar.f31505Z = 0;
        eVar.f31507a0 = true;
        eVar.f31509b0 = true;
        eVar.f31511c0 = false;
        eVar.f31513d0 = false;
        eVar.f31515e0 = false;
        eVar.f31517f0 = -1;
        eVar.f31519g0 = -1;
        eVar.f31521h0 = -1;
        eVar.f31523i0 = -1;
        eVar.f31525j0 = Integer.MIN_VALUE;
        eVar.f31527k0 = Integer.MIN_VALUE;
        eVar.f31529l0 = 0.5f;
        eVar.f31537p0 = new p170w.d();
        return eVar;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof p193z.e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.f8951H;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i8 = 0; i8 < size; i8++) {
                ((c) arrayList.get(i8)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i10 = Integer.parseInt(strArrSplit[0]);
                        int i11 = Integer.parseInt(strArrSplit[1]);
                        int i12 = Integer.parseInt(strArrSplit[2]);
                        int i13 = (int) ((i10 / 1080.0f) * width);
                        int i14 = (int) ((i11 / 1920.0f) * height);
                        int i15 = (int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f8 = i13;
                        float f9 = i14;
                        float f10 = i13 + ((int) ((i12 / 1080.0f) * width));
                        canvas.drawLine(f8, f9, f10, f9, paint);
                        float f11 = i14 + i15;
                        canvas.drawLine(f10, f9, f10, f11, paint);
                        canvas.drawLine(f10, f11, f8, f11, paint);
                        canvas.drawLine(f8, f11, f8, f9, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f8, f9, f10, f11, paint);
                        canvas.drawLine(f8, f11, f10, f9, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f8957N = true;
        super.forceLayout();
    }

    /* JADX WARN: Code duplicated, block: B:164:0x02e8  */
    public final void g(boolean z7, View view, p170w.d dVar, p193z.e eVar, SparseArray sparseArray) {
        float f8;
        int i8;
        p170w.d dVar2;
        p170w.d dVar3;
        p170w.d dVar4;
        p170w.d dVar5;
        int i9;
        int i10;
        float fAbs;
        int i11;
        eVar.a();
        dVar.f30829f0 = view.getVisibility();
        dVar.f30827e0 = view;
        if (view instanceof c) {
            boolean z8 = this.f8952I.f30874u0;
            a aVar = (a) ((c) view);
            int i12 = aVar.f31462N;
            aVar.f31463O = i12;
            if (z8) {
                if (i12 == 5) {
                    aVar.f31463O = 1;
                } else if (i12 == 6) {
                    aVar.f31463O = 0;
                }
            } else if (i12 == 5) {
                aVar.f31463O = 0;
            } else if (i12 == 6) {
                aVar.f31463O = 1;
            }
            if (dVar instanceof p170w.a) {
                ((p170w.a) dVar).f30762r0 = aVar.f31463O;
            }
        }
        int i13 = -1;
        if (eVar.f31513d0) {
            p170w.f fVar = (p170w.f) dVar;
            int i14 = eVar.f31531m0;
            int i15 = eVar.f31533n0;
            float f9 = eVar.f31535o0;
            if (f9 != -1.0f) {
                if (f9 > -1.0f) {
                    fVar.f30880p0 = f9;
                    fVar.f30881q0 = -1;
                    fVar.f30882r0 = -1;
                    return;
                }
                return;
            }
            if (i14 != -1) {
                if (i14 > -1) {
                    fVar.f30880p0 = -1.0f;
                    fVar.f30881q0 = i14;
                    fVar.f30882r0 = -1;
                    return;
                }
                return;
            }
            if (i15 == -1 || i15 <= -1) {
                return;
            }
            fVar.f30880p0 = -1.0f;
            fVar.f30881q0 = -1;
            fVar.f30882r0 = i15;
            return;
        }
        int i16 = eVar.f31517f0;
        int i17 = eVar.f31519g0;
        int i18 = eVar.f31521h0;
        int i19 = eVar.f31523i0;
        int i20 = eVar.f31525j0;
        int i21 = eVar.f31527k0;
        float f10 = eVar.f31529l0;
        int i22 = eVar.f31536p;
        if (i22 != -1) {
            p170w.d dVar6 = (p170w.d) sparseArray.get(i22);
            if (dVar6 != null) {
                float f11 = eVar.f31539r;
                dVar.t(7, dVar6, 7, eVar.f31538q, 0);
                dVar.f30795D = f11;
            }
        } else {
            if (i16 != -1) {
                p170w.d dVar7 = (p170w.d) sparseArray.get(i16);
                if (dVar7 != null) {
                    i8 = 4;
                    f8 = f10;
                    dVar.t(2, dVar7, 2, ((ViewGroup.MarginLayoutParams) eVar).leftMargin, i20);
                } else {
                    f8 = f10;
                    i8 = 4;
                }
            } else {
                f8 = f10;
                i8 = 4;
                if (i17 != -1 && (dVar2 = (p170w.d) sparseArray.get(i17)) != null) {
                    dVar.t(2, dVar2, 4, ((ViewGroup.MarginLayoutParams) eVar).leftMargin, i20);
                }
            }
            if (i18 != -1) {
                p170w.d dVar8 = (p170w.d) sparseArray.get(i18);
                if (dVar8 != null) {
                    dVar.t(i8, dVar8, 2, ((ViewGroup.MarginLayoutParams) eVar).rightMargin, i21);
                }
            } else if (i19 != -1 && (dVar3 = (p170w.d) sparseArray.get(i19)) != null) {
                dVar.t(i8, dVar3, i8, ((ViewGroup.MarginLayoutParams) eVar).rightMargin, i21);
            }
            int i23 = eVar.f31522i;
            if (i23 != -1) {
                p170w.d dVar9 = (p170w.d) sparseArray.get(i23);
                if (dVar9 != null) {
                    dVar.t(3, dVar9, 3, ((ViewGroup.MarginLayoutParams) eVar).topMargin, eVar.f31545x);
                }
            } else {
                int i24 = eVar.f31524j;
                if (i24 != -1 && (dVar4 = (p170w.d) sparseArray.get(i24)) != null) {
                    dVar.t(3, dVar4, 5, ((ViewGroup.MarginLayoutParams) eVar).topMargin, eVar.f31545x);
                }
            }
            int i25 = eVar.f31526k;
            if (i25 != -1) {
                p170w.d dVar10 = (p170w.d) sparseArray.get(i25);
                if (dVar10 != null) {
                    dVar.t(5, dVar10, 3, ((ViewGroup.MarginLayoutParams) eVar).bottomMargin, eVar.f31547z);
                }
            } else {
                int i26 = eVar.f31528l;
                if (i26 != -1 && (dVar5 = (p170w.d) sparseArray.get(i26)) != null) {
                    dVar.t(5, dVar5, 5, ((ViewGroup.MarginLayoutParams) eVar).bottomMargin, eVar.f31547z);
                }
            }
            int i27 = eVar.f31530m;
            if (i27 != -1) {
                k(dVar, eVar, sparseArray, i27, 6);
            } else {
                int i28 = eVar.f31532n;
                if (i28 != -1) {
                    k(dVar, eVar, sparseArray, i28, 3);
                } else {
                    int i29 = eVar.f31534o;
                    if (i29 != -1) {
                        k(dVar, eVar, sparseArray, i29, 5);
                    }
                }
            }
            float f12 = f8;
            if (f12 >= 0.0f) {
                dVar.f30823c0 = f12;
            }
            float f13 = eVar.f31485F;
            if (f13 >= 0.0f) {
                dVar.f30825d0 = f13;
            }
        }
        if (z7 && ((i11 = eVar.f31499T) != -1 || eVar.f31500U != -1)) {
            int i30 = eVar.f31500U;
            dVar.f30815X = i11;
            dVar.f30816Y = i30;
        }
        if (eVar.f31507a0) {
            dVar.I(1);
            dVar.K(((ViewGroup.MarginLayoutParams) eVar).width);
            if (((ViewGroup.MarginLayoutParams) eVar).width == -2) {
                dVar.I(2);
            }
        } else if (((ViewGroup.MarginLayoutParams) eVar).width == -1) {
            if (eVar.f31502W) {
                dVar.I(3);
            } else {
                dVar.I(4);
            }
            dVar.g(2).f30789g = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
            dVar.g(4).f30789g = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
        } else {
            dVar.I(3);
            dVar.K(0);
        }
        if (eVar.f31509b0) {
            dVar.J(1);
            dVar.H(((ViewGroup.MarginLayoutParams) eVar).height);
            if (((ViewGroup.MarginLayoutParams) eVar).height == -2) {
                dVar.J(2);
            }
        } else if (((ViewGroup.MarginLayoutParams) eVar).height == -1) {
            if (eVar.f31503X) {
                dVar.J(3);
            } else {
                dVar.J(4);
            }
            dVar.g(3).f30789g = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
            dVar.g(5).f30789g = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
        } else {
            dVar.J(3);
            dVar.H(0);
        }
        String str = eVar.f31486G;
        if (str == null || str.length() == 0) {
            dVar.f30813V = 0.0f;
        } else {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                i9 = 1;
                i10 = 0;
            } else {
                String strSubstring = str.substring(0, iIndexOf);
                if (strSubstring.equalsIgnoreCase("W")) {
                    i9 = 1;
                    i13 = 0;
                } else if (strSubstring.equalsIgnoreCase("H")) {
                    i9 = 1;
                    i13 = 1;
                } else {
                    i9 = 1;
                }
                i10 = iIndexOf + i9;
            }
            int iIndexOf2 = str.indexOf(58);
            if (iIndexOf2 < 0 || iIndexOf2 >= length - i9) {
                String strSubstring2 = str.substring(i10);
                if (strSubstring2.length() > 0) {
                    try {
                        fAbs = Float.parseFloat(strSubstring2);
                    } catch (NumberFormatException unused) {
                        fAbs = 0.0f;
                    }
                } else {
                    fAbs = 0.0f;
                }
            } else {
                String strSubstring3 = str.substring(i10, iIndexOf2);
                String strSubstring4 = str.substring(iIndexOf2 + i9);
                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                    fAbs = 0.0f;
                } else {
                    try {
                        float f14 = Float.parseFloat(strSubstring3);
                        float f15 = Float.parseFloat(strSubstring4);
                        if (f14 <= 0.0f || f15 <= 0.0f) {
                            fAbs = 0.0f;
                        } else {
                            fAbs = i13 == 1 ? Math.abs(f15 / f14) : Math.abs(f14 / f15);
                        }
                    } catch (NumberFormatException unused2) {
                    }
                }
            }
            if (fAbs > 0.0f) {
                dVar.f30813V = fAbs;
                dVar.f30814W = i13;
            }
        }
        float f16 = eVar.f31487H;
        float[] fArr = dVar.f30837j0;
        fArr[0] = f16;
        fArr[1] = eVar.f31488I;
        dVar.f30833h0 = eVar.f31489J;
        dVar.f30835i0 = eVar.f31490K;
        int i31 = eVar.f31505Z;
        if (i31 >= 0 && i31 <= 3) {
            dVar.f30849q = i31;
        }
        int i32 = eVar.f31491L;
        int i33 = eVar.f31493N;
        int i34 = eVar.f31495P;
        float f17 = eVar.f31497R;
        dVar.f30850r = i32;
        dVar.f30853u = i33;
        if (i34 == Integer.MAX_VALUE) {
            i34 = 0;
        }
        dVar.f30854v = i34;
        dVar.f30855w = f17;
        if (f17 > 0.0f && f17 < 1.0f && i32 == 0) {
            dVar.f30850r = 2;
        }
        int i35 = eVar.f31492M;
        int i36 = eVar.f31494O;
        int i37 = eVar.f31496Q;
        float f18 = eVar.f31498S;
        dVar.f30851s = i35;
        dVar.f30856x = i36;
        dVar.f30857y = i37 == Integer.MAX_VALUE ? 0 : i37;
        dVar.f30858z = f18;
        if (f18 <= 0.0f || f18 >= 1.0f || i35 != 0) {
            return;
        }
        dVar.f30851s = 2;
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        p193z.e eVar = new p193z.e(context, attributeSet);
        eVar.f31506a = -1;
        eVar.f31508b = -1;
        eVar.f31510c = -1.0f;
        eVar.f31512d = true;
        eVar.f31514e = -1;
        eVar.f31516f = -1;
        eVar.f31518g = -1;
        eVar.f31520h = -1;
        eVar.f31522i = -1;
        eVar.f31524j = -1;
        eVar.f31526k = -1;
        eVar.f31528l = -1;
        eVar.f31530m = -1;
        eVar.f31532n = -1;
        eVar.f31534o = -1;
        eVar.f31536p = -1;
        eVar.f31538q = 0;
        eVar.f31539r = 0.0f;
        eVar.f31540s = -1;
        eVar.f31541t = -1;
        eVar.f31542u = -1;
        eVar.f31543v = -1;
        eVar.f31544w = Integer.MIN_VALUE;
        eVar.f31545x = Integer.MIN_VALUE;
        eVar.f31546y = Integer.MIN_VALUE;
        eVar.f31547z = Integer.MIN_VALUE;
        eVar.f31480A = Integer.MIN_VALUE;
        eVar.f31481B = Integer.MIN_VALUE;
        eVar.f31482C = Integer.MIN_VALUE;
        eVar.f31483D = 0;
        eVar.f31484E = 0.5f;
        eVar.f31485F = 0.5f;
        eVar.f31486G = null;
        eVar.f31487H = -1.0f;
        eVar.f31488I = -1.0f;
        eVar.f31489J = 0;
        eVar.f31490K = 0;
        eVar.f31491L = 0;
        eVar.f31492M = 0;
        eVar.f31493N = 0;
        eVar.f31494O = 0;
        eVar.f31495P = 0;
        eVar.f31496Q = 0;
        eVar.f31497R = 1.0f;
        eVar.f31498S = 1.0f;
        eVar.f31499T = -1;
        eVar.f31500U = -1;
        eVar.f31501V = -1;
        eVar.f31502W = false;
        eVar.f31503X = false;
        eVar.f31504Y = null;
        eVar.f31505Z = 0;
        eVar.f31507a0 = true;
        eVar.f31509b0 = true;
        eVar.f31511c0 = false;
        eVar.f31513d0 = false;
        eVar.f31515e0 = false;
        eVar.f31517f0 = -1;
        eVar.f31519g0 = -1;
        eVar.f31521h0 = -1;
        eVar.f31523i0 = -1;
        eVar.f31525j0 = Integer.MIN_VALUE;
        eVar.f31527k0 = Integer.MIN_VALUE;
        eVar.f31529l0 = 0.5f;
        eVar.f31537p0 = new p170w.d();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, r.f31688b);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i8 = 0; i8 < indexCount; i8++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i8);
            int i9 = p193z.d.f31479a.get(index);
            switch (i9) {
                case 1:
                    eVar.f31501V = typedArrayObtainStyledAttributes.getInt(index, eVar.f31501V);
                    break;
                case 2:
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31536p);
                    eVar.f31536p = resourceId;
                    if (resourceId == -1) {
                        eVar.f31536p = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 3:
                    eVar.f31538q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31538q);
                    break;
                case 4:
                    float f8 = typedArrayObtainStyledAttributes.getFloat(index, eVar.f31539r) % 360.0f;
                    eVar.f31539r = f8;
                    if (f8 < 0.0f) {
                        eVar.f31539r = (360.0f - f8) % 360.0f;
                    }
                    break;
                case 5:
                    eVar.f31506a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f31506a);
                    break;
                case 6:
                    eVar.f31508b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f31508b);
                    break;
                case 7:
                    eVar.f31510c = typedArrayObtainStyledAttributes.getFloat(index, eVar.f31510c);
                    break;
                case 8:
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31514e);
                    eVar.f31514e = resourceId2;
                    if (resourceId2 == -1) {
                        eVar.f31514e = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 9:
                    int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31516f);
                    eVar.f31516f = resourceId3;
                    if (resourceId3 == -1) {
                        eVar.f31516f = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 10:
                    int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31518g);
                    eVar.f31518g = resourceId4;
                    if (resourceId4 == -1) {
                        eVar.f31518g = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 11:
                    int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31520h);
                    eVar.f31520h = resourceId5;
                    if (resourceId5 == -1) {
                        eVar.f31520h = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 12:
                    int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31522i);
                    eVar.f31522i = resourceId6;
                    if (resourceId6 == -1) {
                        eVar.f31522i = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 13:
                    int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31524j);
                    eVar.f31524j = resourceId7;
                    if (resourceId7 == -1) {
                        eVar.f31524j = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 14:
                    int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31526k);
                    eVar.f31526k = resourceId8;
                    if (resourceId8 == -1) {
                        eVar.f31526k = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 15:
                    int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31528l);
                    eVar.f31528l = resourceId9;
                    if (resourceId9 == -1) {
                        eVar.f31528l = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 16:
                    int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31530m);
                    eVar.f31530m = resourceId10;
                    if (resourceId10 == -1) {
                        eVar.f31530m = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 17:
                    int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31540s);
                    eVar.f31540s = resourceId11;
                    if (resourceId11 == -1) {
                        eVar.f31540s = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 18:
                    int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31541t);
                    eVar.f31541t = resourceId12;
                    if (resourceId12 == -1) {
                        eVar.f31541t = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 19:
                    int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31542u);
                    eVar.f31542u = resourceId13;
                    if (resourceId13 == -1) {
                        eVar.f31542u = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 20:
                    int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31543v);
                    eVar.f31543v = resourceId14;
                    if (resourceId14 == -1) {
                        eVar.f31543v = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    break;
                case 21:
                    eVar.f31544w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31544w);
                    break;
                case 22:
                    eVar.f31545x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31545x);
                    break;
                case 23:
                    eVar.f31546y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31546y);
                    break;
                case 24:
                    eVar.f31547z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31547z);
                    break;
                case 25:
                    eVar.f31480A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31480A);
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    eVar.f31481B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31481B);
                    break;
                case 27:
                    eVar.f31502W = typedArrayObtainStyledAttributes.getBoolean(index, eVar.f31502W);
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    eVar.f31503X = typedArrayObtainStyledAttributes.getBoolean(index, eVar.f31503X);
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    eVar.f31484E = typedArrayObtainStyledAttributes.getFloat(index, eVar.f31484E);
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    eVar.f31485F = typedArrayObtainStyledAttributes.getFloat(index, eVar.f31485F);
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    int i10 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    eVar.f31491L = i10;
                    if (i10 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                    }
                    break;
                case 32:
                    int i11 = typedArrayObtainStyledAttributes.getInt(index, 0);
                    eVar.f31492M = i11;
                    if (i11 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                    }
                    break;
                case 33:
                    try {
                        eVar.f31493N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31493N);
                    } catch (Exception unused) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f31493N) == -2) {
                            eVar.f31493N = -2;
                        }
                    }
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    try {
                        eVar.f31495P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31495P);
                    } catch (Exception unused2) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f31495P) == -2) {
                            eVar.f31495P = -2;
                        }
                    }
                    break;
                case 35:
                    eVar.f31497R = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, eVar.f31497R));
                    eVar.f31491L = 2;
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    try {
                        eVar.f31494O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31494O);
                    } catch (Exception unused3) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f31494O) == -2) {
                            eVar.f31494O = -2;
                        }
                    }
                    break;
                case 37:
                    try {
                        eVar.f31496Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31496Q);
                    } catch (Exception unused4) {
                        if (typedArrayObtainStyledAttributes.getInt(index, eVar.f31496Q) == -2) {
                            eVar.f31496Q = -2;
                        }
                    }
                    break;
                case 38:
                    eVar.f31498S = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, eVar.f31498S));
                    eVar.f31492M = 2;
                    break;
                default:
                    switch (i9) {
                        case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                            o.g(eVar, typedArrayObtainStyledAttributes.getString(index));
                            break;
                        case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                            eVar.f31487H = typedArrayObtainStyledAttributes.getFloat(index, eVar.f31487H);
                            break;
                        case 46:
                            eVar.f31488I = typedArrayObtainStyledAttributes.getFloat(index, eVar.f31488I);
                            break;
                        case 47:
                            eVar.f31489J = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            eVar.f31490K = typedArrayObtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            eVar.f31499T = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f31499T);
                            break;
                        case 50:
                            eVar.f31500U = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, eVar.f31500U);
                            break;
                        case 51:
                            eVar.f31504Y = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        case 52:
                            int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31532n);
                            eVar.f31532n = resourceId15;
                            if (resourceId15 == -1) {
                                eVar.f31532n = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            break;
                        case 53:
                            int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, eVar.f31534o);
                            eVar.f31534o = resourceId16;
                            if (resourceId16 == -1) {
                                eVar.f31534o = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                            break;
                        case 54:
                            eVar.f31483D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31483D);
                            break;
                        case 55:
                            eVar.f31482C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, eVar.f31482C);
                            break;
                        default:
                            switch (i9) {
                                case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                                    o.f(eVar, typedArrayObtainStyledAttributes, index, 0);
                                    break;
                                case 65:
                                    o.f(eVar, typedArrayObtainStyledAttributes, index, 1);
                                    break;
                                case 66:
                                    eVar.f31505Z = typedArrayObtainStyledAttributes.getInt(index, eVar.f31505Z);
                                    break;
                                case 67:
                                    eVar.f31512d = typedArrayObtainStyledAttributes.getBoolean(index, eVar.f31512d);
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        eVar.a();
        return eVar;
    }

    public int getMaxHeight() {
        return this.f8956M;
    }

    public int getMaxWidth() {
        return this.f8955L;
    }

    public int getMinHeight() {
        return this.f8954K;
    }

    public int getMinWidth() {
        return this.f8953J;
    }

    public int getOptimizationLevel() {
        return this.f8952I.f30861C0;
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        e eVar = this.f8952I;
        if (eVar.f30836j == null) {
            int id2 = getId();
            if (id2 != -1) {
                eVar.f30836j = getContext().getResources().getResourceEntryName(id2);
            } else {
                eVar.f30836j = "parent";
            }
        }
        if (eVar.f30831g0 == null) {
            eVar.f30831g0 = eVar.f30836j;
            Log.v("ConstraintLayout", " setDebugName " + eVar.f30831g0);
        }
        for (p170w.d dVar : eVar.f30889p0) {
            View view = (View) dVar.f30827e0;
            if (view != null) {
                if (dVar.f30836j == null && (id = view.getId()) != -1) {
                    dVar.f30836j = getContext().getResources().getResourceEntryName(id);
                }
                if (dVar.f30831g0 == null) {
                    dVar.f30831g0 = dVar.f30836j;
                    Log.v("ConstraintLayout", " setDebugName " + dVar.f30831g0);
                }
            }
        }
        eVar.l(sb);
        return sb.toString();
    }

    public final p170w.d i(View view) {
        if (view == this) {
            return this.f8952I;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof p193z.e) {
            return ((p193z.e) view.getLayoutParams()).f31537p0;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof p193z.e) {
            return ((p193z.e) view.getLayoutParams()).f31537p0;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:105:0x01db  */
    /* JADX WARN: Code duplicated, block: B:109:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:113:0x01f9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:156:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:158:0x030d  */
    /* JADX WARN: Code duplicated, block: B:160:0x0310  */
    /* JADX WARN: Code duplicated, block: B:165:0x0334  */
    /* JADX WARN: Code duplicated, block: B:174:0x0351  */
    /* JADX WARN: Code duplicated, block: B:196:0x038d  */
    /* JADX WARN: Code duplicated, block: B:198:0x039d  */
    /* JADX WARN: Code duplicated, block: B:201:0x03ac A[LOOP:11: B:199:0x03a6->B:201:0x03ac, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:203:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:206:0x040f  */
    /* JADX WARN: Code duplicated, block: B:207:0x0418  */
    /* JADX WARN: Code duplicated, block: B:209:0x041d  */
    /* JADX WARN: Code duplicated, block: B:210:0x0426  */
    /* JADX WARN: Code duplicated, block: B:212:0x0429 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:213:0x042b  */
    /* JADX WARN: Code duplicated, block: B:214:0x042d  */
    /* JADX WARN: Code duplicated, block: B:216:0x0430  */
    /* JADX WARN: Code duplicated, block: B:217:0x0432  */
    /* JADX WARN: Code duplicated, block: B:219:0x0437  */
    /* JADX WARN: Code duplicated, block: B:221:0x0443  */
    /* JADX WARN: Code duplicated, block: B:225:0x044a  */
    /* JADX WARN: Code duplicated, block: B:227:0x045b  */
    /* JADX WARN: Code duplicated, block: B:229:0x0467  */
    /* JADX WARN: Code duplicated, block: B:230:0x046b  */
    /* JADX WARN: Code duplicated, block: B:235:0x0475  */
    /* JADX WARN: Code duplicated, block: B:246:0x0497  */
    /* JADX WARN: Code duplicated, block: B:252:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:254:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:278:0x04da  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:281:0x04df  */
    /* JADX WARN: Code duplicated, block: B:285:0x04f0 A[LOOP:4: B:284:0x04ee->B:285:0x04f0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:288:0x04fe  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:290:0x0501 A[LOOP:5: B:289:0x04ff->B:290:0x0501, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:293:0x051f  */
    /* JADX WARN: Code duplicated, block: B:295:0x0524  */
    /* JADX WARN: Code duplicated, block: B:297:0x052b  */
    /* JADX WARN: Code duplicated, block: B:299:0x052e  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:302:0x0534  */
    /* JADX WARN: Code duplicated, block: B:303:0x0536  */
    /* JADX WARN: Code duplicated, block: B:306:0x0556 A[LOOP:6: B:305:0x0554->B:306:0x0556, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:309:0x0567  */
    /* JADX WARN: Code duplicated, block: B:311:0x056b  */
    /* JADX WARN: Code duplicated, block: B:314:0x057a  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:325:0x0598  */
    /* JADX WARN: Code duplicated, block: B:328:0x05b5  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:331:0x05c7  */
    /* JADX WARN: Code duplicated, block: B:333:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:336:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:338:0x05f0  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:340:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:342:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:346:0x0618  */
    /* JADX WARN: Code duplicated, block: B:349:0x061e  */
    /* JADX WARN: Code duplicated, block: B:355:0x063b A[LOOP:7: B:308:0x0565->B:355:0x063b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:359:0x01b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:371:0x0380 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:387:0x04e3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:391:0x064d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:396:0x0623 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x00da  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:49:0x0121  */
    /* JADX WARN: Code duplicated, block: B:50:0x0124  */
    /* JADX WARN: Code duplicated, block: B:53:0x012b  */
    /* JADX WARN: Code duplicated, block: B:54:0x012e  */
    /* JADX WARN: Code duplicated, block: B:57:0x0153  */
    /* JADX WARN: Code duplicated, block: B:61:0x015c  */
    /* JADX WARN: Code duplicated, block: B:64:0x0160  */
    /* JADX WARN: Code duplicated, block: B:66:0x0163  */
    /* JADX WARN: Code duplicated, block: B:68:0x0173  */
    /* JADX WARN: Code duplicated, block: B:70:0x0177  */
    /* JADX WARN: Code duplicated, block: B:73:0x017d  */
    /* JADX WARN: Code duplicated, block: B:74:0x017f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0182 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:80:0x018d  */
    /* JADX WARN: Code duplicated, block: B:83:0x0194 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:85:0x019a  */
    /* JADX WARN: Code duplicated, block: B:95:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:97:0x01bb A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:98:0x01bd A[ADDED_TO_REGION] */
    public final void j(e eVar, int i8, int i9, int i10) {
        int iMin;
        int iMax;
        int iMin2;
        int iMax2;
        int i11;
        int iO;
        p178x.e eVar2;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        u uVar;
        f fVar;
        int size;
        int iO2;
        int i15;
        boolean zB;
        boolean z7;
        int i16;
        boolean z8;
        boolean z9;
        f fVar2;
        int i17;
        int i18;
        boolean zQ;
        int i19;
        int size2;
        int i20;
        int i21;
        int[] iArr2;
        boolean z10;
        boolean z11;
        int iMax3;
        int i22;
        int i23;
        int i24;
        int i25;
        boolean z12;
        int i26;
        int i27;
        f fVar3;
        p170w.d dVar;
        int i28;
        int i29;
        boolean z13;
        f fVar4;
        int iO3;
        int i30;
        int iO4;
        boolean z14;
        int i31;
        int size3;
        boolean zS;
        f fVar5;
        int i32;
        ConstraintLayout constraintLayout;
        int childCount;
        int i33;
        ArrayList arrayList;
        int size4;
        int i34;
        p170w.d dVar2;
        int iH;
        boolean z15;
        k kVar;
        m mVar;
        int iMin3;
        int iMin4;
        boolean z16;
        Object obj;
        int i35;
        int i36;
        int i37;
        boolean zQ2;
        boolean z17;
        boolean z18;
        int i38;
        int i39;
        int[] iArr3;
        int i40;
        int i41;
        boolean z19;
        Iterator it;
        boolean z20;
        p pVar;
        int i42;
        p170w.d dVar3;
        int[] iArr4;
        boolean z21;
        boolean z22;
        boolean z23;
        e eVar3 = eVar;
        int mode = View.MeasureSpec.getMode(i9);
        int size5 = View.MeasureSpec.getSize(i9);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size6 = View.MeasureSpec.getSize(i10);
        int iMax4 = Math.max(0, getPaddingTop());
        int iMax5 = Math.max(0, getPaddingBottom());
        int i43 = iMax4 + iMax5;
        int paddingWidth = getPaddingWidth();
        f fVar6 = this.f8964U;
        fVar6.f31549b = iMax4;
        fVar6.f31550c = iMax5;
        fVar6.f31551d = paddingWidth;
        fVar6.f31552e = i43;
        fVar6.f31553f = i9;
        fVar6.f31554g = i10;
        int iMax6 = Math.max(0, getPaddingStart());
        int iMax7 = Math.max(0, getPaddingEnd());
        int i44 = 1;
        if (iMax6 <= 0 && iMax7 <= 0) {
            iMax6 = Math.max(0, getPaddingLeft());
        } else if ((getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection()) {
            iMax6 = iMax7;
        }
        int i45 = size5 - paddingWidth;
        int i46 = size6 - i43;
        int i47 = fVar6.f31552e;
        int i48 = fVar6.f31551d;
        int childCount2 = getChildCount();
        if (mode == Integer.MIN_VALUE) {
            if (childCount2 == 0) {
                iMax = Math.max(0, this.f8953J);
            } else {
                iMin = i45;
            }
            i44 = 2;
            if (mode2 != Integer.MIN_VALUE) {
                if (childCount2 == 0) {
                    iMax2 = Math.max(0, this.f8954K);
                } else {
                    iMin2 = i46;
                }
                i11 = 2;
                iO = eVar.o();
                eVar2 = eVar3.f30871r0;
                i12 = iMin;
                if (i12 == iO) {
                    eVar2.f31128b = true;
                } else {
                    eVar2.f31128b = true;
                }
                eVar3.f30815X = 0;
                eVar3.f30816Y = 0;
                int i49 = this.f8955L - i48;
                iArr = eVar3.f30794C;
                iArr[0] = i49;
                iArr[1] = this.f8956M - i47;
                eVar3.f30819a0 = 0;
                eVar3.f30821b0 = 0;
                eVar3.I(i44);
                eVar3.K(i12);
                eVar3.J(i11);
                eVar3.H(iMin2);
                i13 = this.f8953J - i48;
                if (i13 < 0) {
                    eVar3.f30819a0 = 0;
                } else {
                    eVar3.f30819a0 = i13;
                }
                i14 = this.f8954K - i47;
                if (i14 < 0) {
                    eVar3.f30821b0 = 0;
                } else {
                    eVar3.f30821b0 = i14;
                }
                eVar3.f30876w0 = iMax6;
                eVar3.f30877x0 = iMax4;
                uVar = eVar3.f30870q0;
                uVar.getClass();
                fVar = eVar3.f30873t0;
                size = eVar3.f30889p0.size();
                iO2 = eVar.o();
                i15 = eVar.i();
                zB = i.b(i8, 128);
                if (zB) {
                    z7 = true;
                } else {
                    z7 = true;
                }
                if (z7) {
                    i42 = 0;
                    while (true) {
                        if (i42 < size) {
                            dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                            iArr4 = dVar3.f30847o0;
                            if (iArr4[0] == 3) {
                                z21 = true;
                            } else {
                                z21 = false;
                            }
                            if (iArr4[1] == 3) {
                                z22 = true;
                            } else {
                                z22 = false;
                            }
                            if (z21) {
                                z23 = false;
                            } else {
                                z23 = false;
                            }
                            if (!dVar3.v()) {
                            }
                            i16 = 1073741824;
                            z7 = false;
                        } else {
                            i16 = 1073741824;
                        }
                    }
                } else {
                    i16 = 1073741824;
                }
                z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
                if (z8) {
                    iMin3 = Math.min(iArr[0], i45);
                    iMin4 = Math.min(iArr[1], i46);
                    if (mode == 1073741824) {
                        eVar3.K(iMin3);
                        eVar3.f30871r0.f31127a = true;
                    }
                    if (mode2 == 1073741824) {
                        eVar3.H(iMin4);
                        eVar3.f30871r0.f31127a = true;
                    }
                    if (mode == 1073741824) {
                        z9 = z8;
                        fVar2 = fVar;
                        iO2 = iO2;
                        i17 = i15;
                        z16 = eVar2.f31127a;
                        obj = eVar2.f31129c;
                        if (z16) {
                            e eVar4 = (e) obj;
                            for (p170w.d dVar4 : eVar4.f30889p0) {
                                dVar4.f();
                                dVar4.f30818a = false;
                                k kVar2 = dVar4.f30824d;
                                kVar2.f31172e.f31145j = false;
                                kVar2.f31174g = false;
                                kVar2.n();
                                m mVar2 = dVar4.f30826e;
                                mVar2.f31172e.f31145j = false;
                                mVar2.f31174g = false;
                                mVar2.m();
                            }
                            i35 = 0;
                            eVar4.f();
                            eVar4.f30818a = false;
                            k kVar3 = eVar4.f30824d;
                            kVar3.f31172e.f31145j = false;
                            kVar3.f31174g = false;
                            kVar3.n();
                            m mVar3 = eVar4.f30826e;
                            mVar3.f31172e.f31145j = false;
                            mVar3.f31174g = false;
                            mVar3.m();
                            eVar2.d();
                        } else {
                            i35 = 0;
                        }
                        eVar2.c((e) eVar2.f31130d);
                        e eVar5 = (e) obj;
                        eVar5.f30815X = i35;
                        eVar5.f30816Y = i35;
                        eVar5.f30824d.f31175h.d(i35);
                        eVar5.f30826e.f31175h.d(i35);
                        i36 = 1073741824;
                        if (mode == 1073741824) {
                            i37 = 1;
                            zQ2 = eVar3.Q(i35, zB) & true;
                            i18 = 1;
                        } else {
                            i37 = 1;
                            i18 = 0;
                            zQ2 = true;
                        }
                        if (mode2 == 1073741824) {
                            zQ = zQ2 & eVar3.Q(i37, zB);
                            i18++;
                        } else {
                            zQ = zQ2;
                        }
                    } else {
                        z9 = z8;
                        fVar2 = fVar;
                        iO2 = iO2;
                        i17 = i15;
                        z16 = eVar2.f31127a;
                        obj = eVar2.f31129c;
                        if (z16) {
                            e eVar6 = (e) obj;
                            while (r6.hasNext()) {
                                dVar4.f();
                                dVar4.f30818a = false;
                                k kVar4 = dVar4.f30824d;
                                kVar4.f31172e.f31145j = false;
                                kVar4.f31174g = false;
                                kVar4.n();
                                m mVar4 = dVar4.f30826e;
                                mVar4.f31172e.f31145j = false;
                                mVar4.f31174g = false;
                                mVar4.m();
                            }
                            i35 = 0;
                            eVar6.f();
                            eVar6.f30818a = false;
                            k kVar5 = eVar6.f30824d;
                            kVar5.f31172e.f31145j = false;
                            kVar5.f31174g = false;
                            kVar5.n();
                            m mVar5 = eVar6.f30826e;
                            mVar5.f31172e.f31145j = false;
                            mVar5.f31174g = false;
                            mVar5.m();
                            eVar2.d();
                        } else {
                            i35 = 0;
                        }
                        eVar2.c((e) eVar2.f31130d);
                        e eVar7 = (e) obj;
                        eVar7.f30815X = i35;
                        eVar7.f30816Y = i35;
                        eVar7.f30824d.f31175h.d(i35);
                        eVar7.f30826e.f31175h.d(i35);
                        i36 = 1073741824;
                        if (mode == 1073741824) {
                            i37 = 1;
                            zQ2 = eVar3.Q(i35, zB) & true;
                            i18 = 1;
                        } else {
                            i37 = 1;
                            i18 = 0;
                            zQ2 = true;
                        }
                        if (mode2 == 1073741824) {
                            zQ = zQ2 & eVar3.Q(i37, zB);
                            i18++;
                        } else {
                            zQ = zQ2;
                        }
                    }
                    if (zQ) {
                        if (mode == i36) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        if (mode2 == i36) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        eVar3.L(z17, z18);
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    i18 = 0;
                    zQ = false;
                }
                if (zQ) {
                }
                i19 = eVar3.f30861C0;
                if (size > 0) {
                    size3 = eVar3.f30889p0.size();
                    zS = eVar3.S(64);
                    fVar5 = eVar3.f30873t0;
                    for (i32 = 0; i32 < size3; i32++) {
                        dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                        if (!(dVar2 instanceof p170w.f)) {
                            dVar2.getClass();
                            if (zS) {
                            }
                            iH = dVar2.h(0);
                            int iH2 = dVar2.h(1);
                            if (iH == 3) {
                                z15 = false;
                            } else {
                                z15 = false;
                            }
                            if (!z15) {
                                if (z15) {
                                    uVar.H(0, dVar2, fVar5);
                                }
                            } else if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        }
                    }
                    constraintLayout = fVar5.f31548a;
                    childCount = constraintLayout.getChildCount();
                    for (i33 = 0; i33 < childCount; i33++) {
                        constraintLayout.getChildAt(i33);
                    }
                    arrayList = constraintLayout.f8951H;
                    size4 = arrayList.size();
                    if (size4 > 0) {
                        for (i34 = 0; i34 < size4; i34++) {
                            ((c) arrayList.get(i34)).getClass();
                        }
                    }
                }
                uVar.V(eVar3);
                size2 = ((ArrayList) uVar.f27278H).size();
                i20 = iO2;
                i21 = i17;
                if (size > 0) {
                    uVar.T(eVar3, 0, i20, i21);
                }
                if (size2 > 0) {
                    iArr2 = eVar3.f30847o0;
                    if (iArr2[0] == 2) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (iArr2[1] == 2) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    int iMax8 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                    iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                    for (i22 = 0; i22 < size2; i22++) {
                    }
                    i23 = 2;
                    i24 = 0;
                    while (i24 < i23) {
                        i25 = 0;
                        z12 = false;
                        while (i25 < size2) {
                            dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                            if (!(dVar instanceof g)) {
                                i28 = i19;
                                i29 = size2;
                                z13 = z12;
                                fVar4 = fVar2;
                            } else {
                                iO3 = dVar.o();
                                i30 = dVar.i();
                                i29 = size2;
                                int i50 = dVar.f30817Z;
                                i28 = i19;
                                fVar4 = fVar2;
                                boolean zH = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                                iO4 = dVar.o();
                                z14 = zH;
                                i31 = dVar.i();
                                if (iO4 != iO3) {
                                    dVar.K(iO4);
                                    if (!z10) {
                                    }
                                    z14 = true;
                                }
                                if (i31 != i30) {
                                    dVar.H(i31);
                                    if (z11) {
                                        iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                    }
                                    z13 = true;
                                } else {
                                    z13 = z14;
                                }
                                if (!dVar.f30796E) {
                                }
                            }
                            i25++;
                            size2 = i29;
                            fVar2 = fVar4;
                            z12 = z13;
                            i19 = i28;
                        }
                        i26 = i19;
                        i27 = size2;
                        fVar3 = fVar2;
                        if (z12) {
                            eVar3 = eVar;
                            i19 = i26;
                            break;
                        }
                        i24++;
                        eVar3 = eVar;
                        uVar.T(eVar3, i24, i20, i21);
                        fVar2 = fVar3;
                        i19 = i26;
                        i23 = 2;
                        size2 = i27;
                    }
                }
                eVar3.f30861C0 = i19;
                d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
            }
            if (mode2 != 0) {
                if (mode2 != 1073741824) {
                    i11 = 1;
                } else {
                    iMin2 = Math.min(this.f8956M - i47, i46);
                    i11 = 1;
                }
                iO = eVar.o();
                eVar2 = eVar3.f30871r0;
                i12 = iMin;
                if (i12 == iO) {
                    eVar2.f31128b = true;
                } else {
                    eVar2.f31128b = true;
                }
                eVar3.f30815X = 0;
                eVar3.f30816Y = 0;
                int i410 = this.f8955L - i48;
                iArr = eVar3.f30794C;
                iArr[0] = i410;
                iArr[1] = this.f8956M - i47;
                eVar3.f30819a0 = 0;
                eVar3.f30821b0 = 0;
                eVar3.I(i44);
                eVar3.K(i12);
                eVar3.J(i11);
                eVar3.H(iMin2);
                i13 = this.f8953J - i48;
                if (i13 < 0) {
                    eVar3.f30819a0 = 0;
                } else {
                    eVar3.f30819a0 = i13;
                }
                i14 = this.f8954K - i47;
                if (i14 < 0) {
                    eVar3.f30821b0 = 0;
                } else {
                    eVar3.f30821b0 = i14;
                }
                eVar3.f30876w0 = iMax6;
                eVar3.f30877x0 = iMax4;
                uVar = eVar3.f30870q0;
                uVar.getClass();
                fVar = eVar3.f30873t0;
                size = eVar3.f30889p0.size();
                iO2 = eVar.o();
                i15 = eVar.i();
                zB = i.b(i8, 128);
                if (zB) {
                    z7 = true;
                } else {
                    z7 = true;
                }
                if (z7) {
                    i42 = 0;
                    while (true) {
                        if (i42 < size) {
                            dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                            iArr4 = dVar3.f30847o0;
                            if (iArr4[0] == 3) {
                                z21 = true;
                            } else {
                                z21 = false;
                            }
                            if (iArr4[1] == 3) {
                                z22 = true;
                            } else {
                                z22 = false;
                            }
                            if (z21) {
                                z23 = false;
                            } else {
                                z23 = false;
                            }
                            if (!dVar3.v()) {
                            }
                            i16 = 1073741824;
                            z7 = false;
                        } else {
                            i16 = 1073741824;
                        }
                    }
                } else {
                    i16 = 1073741824;
                }
                z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
                if (z8) {
                    iMin3 = Math.min(iArr[0], i45);
                    iMin4 = Math.min(iArr[1], i46);
                    if (mode == 1073741824) {
                        eVar3.K(iMin3);
                        eVar3.f30871r0.f31127a = true;
                    }
                    if (mode2 == 1073741824) {
                        eVar3.H(iMin4);
                        eVar3.f30871r0.f31127a = true;
                    }
                    if (mode == 1073741824) {
                        z9 = z8;
                        fVar2 = fVar;
                        iO2 = iO2;
                        i17 = i15;
                        z16 = eVar2.f31127a;
                        obj = eVar2.f31129c;
                        if (z16) {
                            e eVar8 = (e) obj;
                            while (r6.hasNext()) {
                                dVar4.f();
                                dVar4.f30818a = false;
                                k kVar6 = dVar4.f30824d;
                                kVar6.f31172e.f31145j = false;
                                kVar6.f31174g = false;
                                kVar6.n();
                                m mVar6 = dVar4.f30826e;
                                mVar6.f31172e.f31145j = false;
                                mVar6.f31174g = false;
                                mVar6.m();
                            }
                            i35 = 0;
                            eVar8.f();
                            eVar8.f30818a = false;
                            k kVar7 = eVar8.f30824d;
                            kVar7.f31172e.f31145j = false;
                            kVar7.f31174g = false;
                            kVar7.n();
                            m mVar7 = eVar8.f30826e;
                            mVar7.f31172e.f31145j = false;
                            mVar7.f31174g = false;
                            mVar7.m();
                            eVar2.d();
                        } else {
                            i35 = 0;
                        }
                        eVar2.c((e) eVar2.f31130d);
                        e eVar9 = (e) obj;
                        eVar9.f30815X = i35;
                        eVar9.f30816Y = i35;
                        eVar9.f30824d.f31175h.d(i35);
                        eVar9.f30826e.f31175h.d(i35);
                        i36 = 1073741824;
                        if (mode == 1073741824) {
                            i37 = 1;
                            zQ2 = eVar3.Q(i35, zB) & true;
                            i18 = 1;
                        } else {
                            i37 = 1;
                            i18 = 0;
                            zQ2 = true;
                        }
                        if (mode2 == 1073741824) {
                            zQ = zQ2 & eVar3.Q(i37, zB);
                            i18++;
                        } else {
                            zQ = zQ2;
                        }
                    } else {
                        z9 = z8;
                        fVar2 = fVar;
                        iO2 = iO2;
                        i17 = i15;
                        z16 = eVar2.f31127a;
                        obj = eVar2.f31129c;
                        if (z16) {
                            e eVar10 = (e) obj;
                            while (r6.hasNext()) {
                                dVar4.f();
                                dVar4.f30818a = false;
                                k kVar8 = dVar4.f30824d;
                                kVar8.f31172e.f31145j = false;
                                kVar8.f31174g = false;
                                kVar8.n();
                                m mVar8 = dVar4.f30826e;
                                mVar8.f31172e.f31145j = false;
                                mVar8.f31174g = false;
                                mVar8.m();
                            }
                            i35 = 0;
                            eVar10.f();
                            eVar10.f30818a = false;
                            k kVar9 = eVar10.f30824d;
                            kVar9.f31172e.f31145j = false;
                            kVar9.f31174g = false;
                            kVar9.n();
                            m mVar9 = eVar10.f30826e;
                            mVar9.f31172e.f31145j = false;
                            mVar9.f31174g = false;
                            mVar9.m();
                            eVar2.d();
                        } else {
                            i35 = 0;
                        }
                        eVar2.c((e) eVar2.f31130d);
                        e eVar11 = (e) obj;
                        eVar11.f30815X = i35;
                        eVar11.f30816Y = i35;
                        eVar11.f30824d.f31175h.d(i35);
                        eVar11.f30826e.f31175h.d(i35);
                        i36 = 1073741824;
                        if (mode == 1073741824) {
                            i37 = 1;
                            zQ2 = eVar3.Q(i35, zB) & true;
                            i18 = 1;
                        } else {
                            i37 = 1;
                            i18 = 0;
                            zQ2 = true;
                        }
                        if (mode2 == 1073741824) {
                            zQ = zQ2 & eVar3.Q(i37, zB);
                            i18++;
                        } else {
                            zQ = zQ2;
                        }
                    }
                    if (zQ) {
                        if (mode == i36) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        if (mode2 == i36) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        eVar3.L(z17, z18);
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    i18 = 0;
                    zQ = false;
                }
                if (zQ) {
                }
                i19 = eVar3.f30861C0;
                if (size > 0) {
                    size3 = eVar3.f30889p0.size();
                    zS = eVar3.S(64);
                    fVar5 = eVar3.f30873t0;
                    while (i32 < size3) {
                        dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                        if (!(dVar2 instanceof p170w.f)) {
                            dVar2.getClass();
                            if (zS) {
                            }
                            iH = dVar2.h(0);
                            int iH3 = dVar2.h(1);
                            if (iH == 3) {
                                z15 = false;
                            } else {
                                z15 = false;
                            }
                            if (!z15) {
                                if (z15) {
                                    uVar.H(0, dVar2, fVar5);
                                }
                            } else if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        }
                    }
                    constraintLayout = fVar5.f31548a;
                    childCount = constraintLayout.getChildCount();
                    while (i33 < childCount) {
                        constraintLayout.getChildAt(i33);
                    }
                    arrayList = constraintLayout.f8951H;
                    size4 = arrayList.size();
                    if (size4 > 0) {
                        while (i34 < size4) {
                            ((c) arrayList.get(i34)).getClass();
                        }
                    }
                }
                uVar.V(eVar3);
                size2 = ((ArrayList) uVar.f27278H).size();
                i20 = iO2;
                i21 = i17;
                if (size > 0) {
                    uVar.T(eVar3, 0, i20, i21);
                }
                if (size2 > 0) {
                    iArr2 = eVar3.f30847o0;
                    if (iArr2[0] == 2) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (iArr2[1] == 2) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    int iMax9 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                    iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                    while (i22 < size2) {
                    }
                    i23 = 2;
                    i24 = 0;
                    while (i24 < i23) {
                        i25 = 0;
                        z12 = false;
                        while (i25 < size2) {
                            dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                            if (!(dVar instanceof g)) {
                                i28 = i19;
                                i29 = size2;
                                z13 = z12;
                                fVar4 = fVar2;
                            } else {
                                iO3 = dVar.o();
                                i30 = dVar.i();
                                i29 = size2;
                                int i51 = dVar.f30817Z;
                                i28 = i19;
                                fVar4 = fVar2;
                                boolean zH2 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                                iO4 = dVar.o();
                                z14 = zH2;
                                i31 = dVar.i();
                                if (iO4 != iO3) {
                                    dVar.K(iO4);
                                    if (!z10) {
                                    }
                                    z14 = true;
                                }
                                if (i31 != i30) {
                                    dVar.H(i31);
                                    if (z11) {
                                        iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                    }
                                    z13 = true;
                                } else {
                                    z13 = z14;
                                }
                                if (!dVar.f30796E) {
                                }
                            }
                            i25++;
                            size2 = i29;
                            fVar2 = fVar4;
                            z12 = z13;
                            i19 = i28;
                        }
                        i26 = i19;
                        i27 = size2;
                        fVar3 = fVar2;
                        if (z12) {
                            eVar3 = eVar;
                            i19 = i26;
                            break;
                        }
                        i24++;
                        eVar3 = eVar;
                        uVar.T(eVar3, i24, i20, i21);
                        fVar2 = fVar3;
                        i19 = i26;
                        i23 = 2;
                        size2 = i27;
                    }
                }
                eVar3.f30861C0 = i19;
                d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
            }
            if (childCount2 == 0) {
                iMax2 = Math.max(0, this.f8954K);
            } else {
                i11 = 2;
            }
            iMin2 = 0;
            iO = eVar.o();
            eVar2 = eVar3.f30871r0;
            i12 = iMin;
            if (i12 == iO) {
                eVar2.f31128b = true;
            } else {
                eVar2.f31128b = true;
            }
            eVar3.f30815X = 0;
            eVar3.f30816Y = 0;
            int i411 = this.f8955L - i48;
            iArr = eVar3.f30794C;
            iArr[0] = i411;
            iArr[1] = this.f8956M - i47;
            eVar3.f30819a0 = 0;
            eVar3.f30821b0 = 0;
            eVar3.I(i44);
            eVar3.K(i12);
            eVar3.J(i11);
            eVar3.H(iMin2);
            i13 = this.f8953J - i48;
            if (i13 < 0) {
                eVar3.f30819a0 = 0;
            } else {
                eVar3.f30819a0 = i13;
            }
            i14 = this.f8954K - i47;
            if (i14 < 0) {
                eVar3.f30821b0 = 0;
            } else {
                eVar3.f30821b0 = i14;
            }
            eVar3.f30876w0 = iMax6;
            eVar3.f30877x0 = iMax4;
            uVar = eVar3.f30870q0;
            uVar.getClass();
            fVar = eVar3.f30873t0;
            size = eVar3.f30889p0.size();
            iO2 = eVar.o();
            i15 = eVar.i();
            zB = i.b(i8, 128);
            if (zB) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (z7) {
                i42 = 0;
                while (true) {
                    if (i42 < size) {
                        dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                        iArr4 = dVar3.f30847o0;
                        if (iArr4[0] == 3) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        if (iArr4[1] == 3) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        if (z21) {
                            z23 = false;
                        } else {
                            z23 = false;
                        }
                        if (!dVar3.v()) {
                        }
                        i16 = 1073741824;
                        z7 = false;
                    } else {
                        i16 = 1073741824;
                    }
                }
            } else {
                i16 = 1073741824;
            }
            z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
            if (z8) {
                iMin3 = Math.min(iArr[0], i45);
                iMin4 = Math.min(iArr[1], i46);
                if (mode == 1073741824) {
                    eVar3.K(iMin3);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode2 == 1073741824) {
                    eVar3.H(iMin4);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode == 1073741824) {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar12 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar10 = dVar4.f30824d;
                            kVar10.f31172e.f31145j = false;
                            kVar10.f31174g = false;
                            kVar10.n();
                            m mVar10 = dVar4.f30826e;
                            mVar10.f31172e.f31145j = false;
                            mVar10.f31174g = false;
                            mVar10.m();
                        }
                        i35 = 0;
                        eVar12.f();
                        eVar12.f30818a = false;
                        k kVar11 = eVar12.f30824d;
                        kVar11.f31172e.f31145j = false;
                        kVar11.f31174g = false;
                        kVar11.n();
                        m mVar11 = eVar12.f30826e;
                        mVar11.f31172e.f31145j = false;
                        mVar11.f31174g = false;
                        mVar11.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar13 = (e) obj;
                    eVar13.f30815X = i35;
                    eVar13.f30816Y = i35;
                    eVar13.f30824d.f31175h.d(i35);
                    eVar13.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar14 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar12 = dVar4.f30824d;
                            kVar12.f31172e.f31145j = false;
                            kVar12.f31174g = false;
                            kVar12.n();
                            m mVar12 = dVar4.f30826e;
                            mVar12.f31172e.f31145j = false;
                            mVar12.f31174g = false;
                            mVar12.m();
                        }
                        i35 = 0;
                        eVar14.f();
                        eVar14.f30818a = false;
                        k kVar13 = eVar14.f30824d;
                        kVar13.f31172e.f31145j = false;
                        kVar13.f31174g = false;
                        kVar13.n();
                        m mVar13 = eVar14.f30826e;
                        mVar13.f31172e.f31145j = false;
                        mVar13.f31174g = false;
                        mVar13.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar15 = (e) obj;
                    eVar15.f30815X = i35;
                    eVar15.f30816Y = i35;
                    eVar15.f30824d.f31175h.d(i35);
                    eVar15.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                }
                if (zQ) {
                    if (mode == i36) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    if (mode2 == i36) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    eVar3.L(z17, z18);
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                i18 = 0;
                zQ = false;
            }
            if (zQ) {
            }
            i19 = eVar3.f30861C0;
            if (size > 0) {
                size3 = eVar3.f30889p0.size();
                zS = eVar3.S(64);
                fVar5 = eVar3.f30873t0;
                while (i32 < size3) {
                    dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                    if (!(dVar2 instanceof p170w.f)) {
                        dVar2.getClass();
                        if (zS) {
                        }
                        iH = dVar2.h(0);
                        int iH4 = dVar2.h(1);
                        if (iH == 3) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (!z15) {
                            if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        } else if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    }
                }
                constraintLayout = fVar5.f31548a;
                childCount = constraintLayout.getChildCount();
                while (i33 < childCount) {
                    constraintLayout.getChildAt(i33);
                }
                arrayList = constraintLayout.f8951H;
                size4 = arrayList.size();
                if (size4 > 0) {
                    while (i34 < size4) {
                        ((c) arrayList.get(i34)).getClass();
                    }
                }
            }
            uVar.V(eVar3);
            size2 = ((ArrayList) uVar.f27278H).size();
            i20 = iO2;
            i21 = i17;
            if (size > 0) {
                uVar.T(eVar3, 0, i20, i21);
            }
            if (size2 > 0) {
                iArr2 = eVar3.f30847o0;
                if (iArr2[0] == 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (iArr2[1] == 2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                int iMax10 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                while (i22 < size2) {
                }
                i23 = 2;
                i24 = 0;
                while (i24 < i23) {
                    i25 = 0;
                    z12 = false;
                    while (i25 < size2) {
                        dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                        if (!(dVar instanceof g)) {
                            i28 = i19;
                            i29 = size2;
                            z13 = z12;
                            fVar4 = fVar2;
                        } else {
                            iO3 = dVar.o();
                            i30 = dVar.i();
                            i29 = size2;
                            int i52 = dVar.f30817Z;
                            i28 = i19;
                            fVar4 = fVar2;
                            boolean zH3 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                            iO4 = dVar.o();
                            z14 = zH3;
                            i31 = dVar.i();
                            if (iO4 != iO3) {
                                dVar.K(iO4);
                                if (!z10) {
                                }
                                z14 = true;
                            }
                            if (i31 != i30) {
                                dVar.H(i31);
                                if (z11) {
                                    iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                }
                                z13 = true;
                            } else {
                                z13 = z14;
                            }
                            if (!dVar.f30796E) {
                            }
                        }
                        i25++;
                        size2 = i29;
                        fVar2 = fVar4;
                        z12 = z13;
                        i19 = i28;
                    }
                    i26 = i19;
                    i27 = size2;
                    fVar3 = fVar2;
                    if (z12) {
                        eVar3 = eVar;
                        i19 = i26;
                        break;
                    }
                    i24++;
                    eVar3 = eVar;
                    uVar.T(eVar3, i24, i20, i21);
                    fVar2 = fVar3;
                    i19 = i26;
                    i23 = 2;
                    size2 = i27;
                }
            }
            eVar3.f30861C0 = i19;
            d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
            iMin2 = iMax2;
            i11 = 2;
            iO = eVar.o();
            eVar2 = eVar3.f30871r0;
            i12 = iMin;
            if (i12 == iO) {
                eVar2.f31128b = true;
            } else {
                eVar2.f31128b = true;
            }
            eVar3.f30815X = 0;
            eVar3.f30816Y = 0;
            int i412 = this.f8955L - i48;
            iArr = eVar3.f30794C;
            iArr[0] = i412;
            iArr[1] = this.f8956M - i47;
            eVar3.f30819a0 = 0;
            eVar3.f30821b0 = 0;
            eVar3.I(i44);
            eVar3.K(i12);
            eVar3.J(i11);
            eVar3.H(iMin2);
            i13 = this.f8953J - i48;
            if (i13 < 0) {
                eVar3.f30819a0 = 0;
            } else {
                eVar3.f30819a0 = i13;
            }
            i14 = this.f8954K - i47;
            if (i14 < 0) {
                eVar3.f30821b0 = 0;
            } else {
                eVar3.f30821b0 = i14;
            }
            eVar3.f30876w0 = iMax6;
            eVar3.f30877x0 = iMax4;
            uVar = eVar3.f30870q0;
            uVar.getClass();
            fVar = eVar3.f30873t0;
            size = eVar3.f30889p0.size();
            iO2 = eVar.o();
            i15 = eVar.i();
            zB = i.b(i8, 128);
            if (zB) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (z7) {
                i42 = 0;
                while (true) {
                    if (i42 < size) {
                        dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                        iArr4 = dVar3.f30847o0;
                        if (iArr4[0] == 3) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        if (iArr4[1] == 3) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        if (z21) {
                            z23 = false;
                        } else {
                            z23 = false;
                        }
                        if (!dVar3.v()) {
                        }
                        i16 = 1073741824;
                        z7 = false;
                    } else {
                        i16 = 1073741824;
                    }
                }
            } else {
                i16 = 1073741824;
            }
            z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
            if (z8) {
                iMin3 = Math.min(iArr[0], i45);
                iMin4 = Math.min(iArr[1], i46);
                if (mode == 1073741824) {
                    eVar3.K(iMin3);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode2 == 1073741824) {
                    eVar3.H(iMin4);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode == 1073741824) {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar16 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar14 = dVar4.f30824d;
                            kVar14.f31172e.f31145j = false;
                            kVar14.f31174g = false;
                            kVar14.n();
                            m mVar14 = dVar4.f30826e;
                            mVar14.f31172e.f31145j = false;
                            mVar14.f31174g = false;
                            mVar14.m();
                        }
                        i35 = 0;
                        eVar16.f();
                        eVar16.f30818a = false;
                        k kVar15 = eVar16.f30824d;
                        kVar15.f31172e.f31145j = false;
                        kVar15.f31174g = false;
                        kVar15.n();
                        m mVar15 = eVar16.f30826e;
                        mVar15.f31172e.f31145j = false;
                        mVar15.f31174g = false;
                        mVar15.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar17 = (e) obj;
                    eVar17.f30815X = i35;
                    eVar17.f30816Y = i35;
                    eVar17.f30824d.f31175h.d(i35);
                    eVar17.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar18 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar16 = dVar4.f30824d;
                            kVar16.f31172e.f31145j = false;
                            kVar16.f31174g = false;
                            kVar16.n();
                            m mVar16 = dVar4.f30826e;
                            mVar16.f31172e.f31145j = false;
                            mVar16.f31174g = false;
                            mVar16.m();
                        }
                        i35 = 0;
                        eVar18.f();
                        eVar18.f30818a = false;
                        k kVar17 = eVar18.f30824d;
                        kVar17.f31172e.f31145j = false;
                        kVar17.f31174g = false;
                        kVar17.n();
                        m mVar17 = eVar18.f30826e;
                        mVar17.f31172e.f31145j = false;
                        mVar17.f31174g = false;
                        mVar17.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar19 = (e) obj;
                    eVar19.f30815X = i35;
                    eVar19.f30816Y = i35;
                    eVar19.f30824d.f31175h.d(i35);
                    eVar19.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                }
                if (zQ) {
                    if (mode == i36) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    if (mode2 == i36) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    eVar3.L(z17, z18);
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                i18 = 0;
                zQ = false;
            }
            if (zQ) {
            }
            i19 = eVar3.f30861C0;
            if (size > 0) {
                size3 = eVar3.f30889p0.size();
                zS = eVar3.S(64);
                fVar5 = eVar3.f30873t0;
                while (i32 < size3) {
                    dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                    if (!(dVar2 instanceof p170w.f)) {
                        dVar2.getClass();
                        if (zS) {
                        }
                        iH = dVar2.h(0);
                        int iH5 = dVar2.h(1);
                        if (iH == 3) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (!z15) {
                            if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        } else if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    }
                }
                constraintLayout = fVar5.f31548a;
                childCount = constraintLayout.getChildCount();
                while (i33 < childCount) {
                    constraintLayout.getChildAt(i33);
                }
                arrayList = constraintLayout.f8951H;
                size4 = arrayList.size();
                if (size4 > 0) {
                    while (i34 < size4) {
                        ((c) arrayList.get(i34)).getClass();
                    }
                }
            }
            uVar.V(eVar3);
            size2 = ((ArrayList) uVar.f27278H).size();
            i20 = iO2;
            i21 = i17;
            if (size > 0) {
                uVar.T(eVar3, 0, i20, i21);
            }
            if (size2 > 0) {
                iArr2 = eVar3.f30847o0;
                if (iArr2[0] == 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (iArr2[1] == 2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                int iMax11 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                while (i22 < size2) {
                }
                i23 = 2;
                i24 = 0;
                while (i24 < i23) {
                    i25 = 0;
                    z12 = false;
                    while (i25 < size2) {
                        dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                        if (!(dVar instanceof g)) {
                            i28 = i19;
                            i29 = size2;
                            z13 = z12;
                            fVar4 = fVar2;
                        } else {
                            iO3 = dVar.o();
                            i30 = dVar.i();
                            i29 = size2;
                            int i53 = dVar.f30817Z;
                            i28 = i19;
                            fVar4 = fVar2;
                            boolean zH4 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                            iO4 = dVar.o();
                            z14 = zH4;
                            i31 = dVar.i();
                            if (iO4 != iO3) {
                                dVar.K(iO4);
                                if (!z10) {
                                }
                                z14 = true;
                            }
                            if (i31 != i30) {
                                dVar.H(i31);
                                if (z11) {
                                    iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                }
                                z13 = true;
                            } else {
                                z13 = z14;
                            }
                            if (!dVar.f30796E) {
                            }
                        }
                        i25++;
                        size2 = i29;
                        fVar2 = fVar4;
                        z12 = z13;
                        i19 = i28;
                    }
                    i26 = i19;
                    i27 = size2;
                    fVar3 = fVar2;
                    if (z12) {
                        eVar3 = eVar;
                        i19 = i26;
                        break;
                    }
                    i24++;
                    eVar3 = eVar;
                    uVar.T(eVar3, i24, i20, i21);
                    fVar2 = fVar3;
                    i19 = i26;
                    i23 = 2;
                    size2 = i27;
                }
            }
            eVar3.f30861C0 = i19;
            d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
        }
        if (mode != 0) {
            if (mode == 1073741824) {
                iMin = Math.min(this.f8955L - i48, i45);
                i44 = 1;
            }
            if (mode2 != Integer.MIN_VALUE) {
                if (childCount2 == 0) {
                    iMax2 = Math.max(0, this.f8954K);
                } else {
                    iMin2 = i46;
                }
                i11 = 2;
                iO = eVar.o();
                eVar2 = eVar3.f30871r0;
                i12 = iMin;
                if (i12 == iO) {
                    eVar2.f31128b = true;
                } else {
                    eVar2.f31128b = true;
                }
                eVar3.f30815X = 0;
                eVar3.f30816Y = 0;
                int i413 = this.f8955L - i48;
                iArr = eVar3.f30794C;
                iArr[0] = i413;
                iArr[1] = this.f8956M - i47;
                eVar3.f30819a0 = 0;
                eVar3.f30821b0 = 0;
                eVar3.I(i44);
                eVar3.K(i12);
                eVar3.J(i11);
                eVar3.H(iMin2);
                i13 = this.f8953J - i48;
                if (i13 < 0) {
                    eVar3.f30819a0 = 0;
                } else {
                    eVar3.f30819a0 = i13;
                }
                i14 = this.f8954K - i47;
                if (i14 < 0) {
                    eVar3.f30821b0 = 0;
                } else {
                    eVar3.f30821b0 = i14;
                }
                eVar3.f30876w0 = iMax6;
                eVar3.f30877x0 = iMax4;
                uVar = eVar3.f30870q0;
                uVar.getClass();
                fVar = eVar3.f30873t0;
                size = eVar3.f30889p0.size();
                iO2 = eVar.o();
                i15 = eVar.i();
                zB = i.b(i8, 128);
                if (zB) {
                    z7 = true;
                } else {
                    z7 = true;
                }
                if (z7) {
                    i42 = 0;
                    while (true) {
                        if (i42 < size) {
                            dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                            iArr4 = dVar3.f30847o0;
                            if (iArr4[0] == 3) {
                                z21 = true;
                            } else {
                                z21 = false;
                            }
                            if (iArr4[1] == 3) {
                                z22 = true;
                            } else {
                                z22 = false;
                            }
                            if (z21) {
                                z23 = false;
                            } else {
                                z23 = false;
                            }
                            if (!dVar3.v()) {
                            }
                            i16 = 1073741824;
                            z7 = false;
                        } else {
                            i16 = 1073741824;
                        }
                    }
                } else {
                    i16 = 1073741824;
                }
                z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
                if (z8) {
                    iMin3 = Math.min(iArr[0], i45);
                    iMin4 = Math.min(iArr[1], i46);
                    if (mode == 1073741824) {
                        eVar3.K(iMin3);
                        eVar3.f30871r0.f31127a = true;
                    }
                    if (mode2 == 1073741824) {
                        eVar3.H(iMin4);
                        eVar3.f30871r0.f31127a = true;
                    }
                    if (mode == 1073741824) {
                        z9 = z8;
                        fVar2 = fVar;
                        iO2 = iO2;
                        i17 = i15;
                        z16 = eVar2.f31127a;
                        obj = eVar2.f31129c;
                        if (z16) {
                            e eVar110 = (e) obj;
                            while (r6.hasNext()) {
                                dVar4.f();
                                dVar4.f30818a = false;
                                k kVar18 = dVar4.f30824d;
                                kVar18.f31172e.f31145j = false;
                                kVar18.f31174g = false;
                                kVar18.n();
                                m mVar18 = dVar4.f30826e;
                                mVar18.f31172e.f31145j = false;
                                mVar18.f31174g = false;
                                mVar18.m();
                            }
                            i35 = 0;
                            eVar110.f();
                            eVar110.f30818a = false;
                            k kVar19 = eVar110.f30824d;
                            kVar19.f31172e.f31145j = false;
                            kVar19.f31174g = false;
                            kVar19.n();
                            m mVar19 = eVar110.f30826e;
                            mVar19.f31172e.f31145j = false;
                            mVar19.f31174g = false;
                            mVar19.m();
                            eVar2.d();
                        } else {
                            i35 = 0;
                        }
                        eVar2.c((e) eVar2.f31130d);
                        e eVar111 = (e) obj;
                        eVar111.f30815X = i35;
                        eVar111.f30816Y = i35;
                        eVar111.f30824d.f31175h.d(i35);
                        eVar111.f30826e.f31175h.d(i35);
                        i36 = 1073741824;
                        if (mode == 1073741824) {
                            i37 = 1;
                            zQ2 = eVar3.Q(i35, zB) & true;
                            i18 = 1;
                        } else {
                            i37 = 1;
                            i18 = 0;
                            zQ2 = true;
                        }
                        if (mode2 == 1073741824) {
                            zQ = zQ2 & eVar3.Q(i37, zB);
                            i18++;
                        } else {
                            zQ = zQ2;
                        }
                    } else {
                        z9 = z8;
                        fVar2 = fVar;
                        iO2 = iO2;
                        i17 = i15;
                        z16 = eVar2.f31127a;
                        obj = eVar2.f31129c;
                        if (z16) {
                            e eVar112 = (e) obj;
                            while (r6.hasNext()) {
                                dVar4.f();
                                dVar4.f30818a = false;
                                k kVar110 = dVar4.f30824d;
                                kVar110.f31172e.f31145j = false;
                                kVar110.f31174g = false;
                                kVar110.n();
                                m mVar110 = dVar4.f30826e;
                                mVar110.f31172e.f31145j = false;
                                mVar110.f31174g = false;
                                mVar110.m();
                            }
                            i35 = 0;
                            eVar112.f();
                            eVar112.f30818a = false;
                            k kVar111 = eVar112.f30824d;
                            kVar111.f31172e.f31145j = false;
                            kVar111.f31174g = false;
                            kVar111.n();
                            m mVar111 = eVar112.f30826e;
                            mVar111.f31172e.f31145j = false;
                            mVar111.f31174g = false;
                            mVar111.m();
                            eVar2.d();
                        } else {
                            i35 = 0;
                        }
                        eVar2.c((e) eVar2.f31130d);
                        e eVar113 = (e) obj;
                        eVar113.f30815X = i35;
                        eVar113.f30816Y = i35;
                        eVar113.f30824d.f31175h.d(i35);
                        eVar113.f30826e.f31175h.d(i35);
                        i36 = 1073741824;
                        if (mode == 1073741824) {
                            i37 = 1;
                            zQ2 = eVar3.Q(i35, zB) & true;
                            i18 = 1;
                        } else {
                            i37 = 1;
                            i18 = 0;
                            zQ2 = true;
                        }
                        if (mode2 == 1073741824) {
                            zQ = zQ2 & eVar3.Q(i37, zB);
                            i18++;
                        } else {
                            zQ = zQ2;
                        }
                    }
                    if (zQ) {
                        if (mode == i36) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        if (mode2 == i36) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        eVar3.L(z17, z18);
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    i18 = 0;
                    zQ = false;
                }
                if (zQ) {
                }
                i19 = eVar3.f30861C0;
                if (size > 0) {
                    size3 = eVar3.f30889p0.size();
                    zS = eVar3.S(64);
                    fVar5 = eVar3.f30873t0;
                    while (i32 < size3) {
                        dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                        if (!(dVar2 instanceof p170w.f)) {
                            dVar2.getClass();
                            if (zS) {
                            }
                            iH = dVar2.h(0);
                            int iH6 = dVar2.h(1);
                            if (iH == 3) {
                                z15 = false;
                            } else {
                                z15 = false;
                            }
                            if (!z15) {
                                if (z15) {
                                    uVar.H(0, dVar2, fVar5);
                                }
                            } else if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        }
                    }
                    constraintLayout = fVar5.f31548a;
                    childCount = constraintLayout.getChildCount();
                    while (i33 < childCount) {
                        constraintLayout.getChildAt(i33);
                    }
                    arrayList = constraintLayout.f8951H;
                    size4 = arrayList.size();
                    if (size4 > 0) {
                        while (i34 < size4) {
                            ((c) arrayList.get(i34)).getClass();
                        }
                    }
                }
                uVar.V(eVar3);
                size2 = ((ArrayList) uVar.f27278H).size();
                i20 = iO2;
                i21 = i17;
                if (size > 0) {
                    uVar.T(eVar3, 0, i20, i21);
                }
                if (size2 > 0) {
                    iArr2 = eVar3.f30847o0;
                    if (iArr2[0] == 2) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (iArr2[1] == 2) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    int iMax12 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                    iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                    while (i22 < size2) {
                    }
                    i23 = 2;
                    i24 = 0;
                    while (i24 < i23) {
                        i25 = 0;
                        z12 = false;
                        while (i25 < size2) {
                            dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                            if (!(dVar instanceof g)) {
                                i28 = i19;
                                i29 = size2;
                                z13 = z12;
                                fVar4 = fVar2;
                            } else {
                                iO3 = dVar.o();
                                i30 = dVar.i();
                                i29 = size2;
                                int i54 = dVar.f30817Z;
                                i28 = i19;
                                fVar4 = fVar2;
                                boolean zH5 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                                iO4 = dVar.o();
                                z14 = zH5;
                                i31 = dVar.i();
                                if (iO4 != iO3) {
                                    dVar.K(iO4);
                                    if (!z10) {
                                    }
                                    z14 = true;
                                }
                                if (i31 != i30) {
                                    dVar.H(i31);
                                    if (z11) {
                                        iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                    }
                                    z13 = true;
                                } else {
                                    z13 = z14;
                                }
                                if (!dVar.f30796E) {
                                }
                            }
                            i25++;
                            size2 = i29;
                            fVar2 = fVar4;
                            z12 = z13;
                            i19 = i28;
                        }
                        i26 = i19;
                        i27 = size2;
                        fVar3 = fVar2;
                        if (z12) {
                            eVar3 = eVar;
                            i19 = i26;
                            break;
                        }
                        i24++;
                        eVar3 = eVar;
                        uVar.T(eVar3, i24, i20, i21);
                        fVar2 = fVar3;
                        i19 = i26;
                        i23 = 2;
                        size2 = i27;
                    }
                }
                eVar3.f30861C0 = i19;
                d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
            }
            if (mode2 != 0) {
                if (mode2 != 1073741824) {
                    i11 = 1;
                } else {
                    iMin2 = Math.min(this.f8956M - i47, i46);
                    i11 = 1;
                }
                iO = eVar.o();
                eVar2 = eVar3.f30871r0;
                i12 = iMin;
                if (i12 == iO || iMin2 != eVar.i()) {
                    eVar2.f31128b = true;
                }
                eVar3.f30815X = 0;
                eVar3.f30816Y = 0;
                int i414 = this.f8955L - i48;
                iArr = eVar3.f30794C;
                iArr[0] = i414;
                iArr[1] = this.f8956M - i47;
                eVar3.f30819a0 = 0;
                eVar3.f30821b0 = 0;
                eVar3.I(i44);
                eVar3.K(i12);
                eVar3.J(i11);
                eVar3.H(iMin2);
                i13 = this.f8953J - i48;
                if (i13 < 0) {
                    eVar3.f30819a0 = 0;
                } else {
                    eVar3.f30819a0 = i13;
                }
                i14 = this.f8954K - i47;
                if (i14 < 0) {
                    eVar3.f30821b0 = 0;
                } else {
                    eVar3.f30821b0 = i14;
                }
                eVar3.f30876w0 = iMax6;
                eVar3.f30877x0 = iMax4;
                uVar = eVar3.f30870q0;
                uVar.getClass();
                fVar = eVar3.f30873t0;
                size = eVar3.f30889p0.size();
                iO2 = eVar.o();
                i15 = eVar.i();
                zB = i.b(i8, 128);
                if (zB || i.b(i8, 64)) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7) {
                    i42 = 0;
                    while (true) {
                        if (i42 < size) {
                            dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                            iArr4 = dVar3.f30847o0;
                            if (iArr4[0] == 3) {
                                z21 = true;
                            } else {
                                z21 = false;
                            }
                            if (iArr4[1] == 3) {
                                z22 = true;
                            } else {
                                z22 = false;
                            }
                            if (z21 || !z22 || dVar3.f30813V <= 0.0f) {
                                z23 = false;
                            } else {
                                z23 = true;
                            }
                            if ((!dVar3.v() && z23) || ((dVar3.w() && z23) || dVar3.v() || dVar3.w())) {
                                i16 = 1073741824;
                                z7 = false;
                            }
                        } else {
                            i16 = 1073741824;
                        }
                    }
                } else {
                    i16 = 1073741824;
                }
                z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
                if (z8) {
                    iMin3 = Math.min(iArr[0], i45);
                    iMin4 = Math.min(iArr[1], i46);
                    if (mode == 1073741824 && eVar.o() != iMin3) {
                        eVar3.K(iMin3);
                        eVar3.f30871r0.f31127a = true;
                    }
                    if (mode2 == 1073741824 && eVar.i() != iMin4) {
                        eVar3.H(iMin4);
                        eVar3.f30871r0.f31127a = true;
                    }
                    if (mode == 1073741824 || mode2 != 1073741824) {
                        z9 = z8;
                        fVar2 = fVar;
                        iO2 = iO2;
                        i17 = i15;
                        z16 = eVar2.f31127a;
                        obj = eVar2.f31129c;
                        if (z16) {
                            e eVar114 = (e) obj;
                            while (r6.hasNext()) {
                                dVar4.f();
                                dVar4.f30818a = false;
                                k kVar112 = dVar4.f30824d;
                                kVar112.f31172e.f31145j = false;
                                kVar112.f31174g = false;
                                kVar112.n();
                                m mVar112 = dVar4.f30826e;
                                mVar112.f31172e.f31145j = false;
                                mVar112.f31174g = false;
                                mVar112.m();
                            }
                            i35 = 0;
                            eVar114.f();
                            eVar114.f30818a = false;
                            k kVar113 = eVar114.f30824d;
                            kVar113.f31172e.f31145j = false;
                            kVar113.f31174g = false;
                            kVar113.n();
                            m mVar113 = eVar114.f30826e;
                            mVar113.f31172e.f31145j = false;
                            mVar113.f31174g = false;
                            mVar113.m();
                            eVar2.d();
                        } else {
                            i35 = 0;
                        }
                        eVar2.c((e) eVar2.f31130d);
                        e eVar115 = (e) obj;
                        eVar115.f30815X = i35;
                        eVar115.f30816Y = i35;
                        eVar115.f30824d.f31175h.d(i35);
                        eVar115.f30826e.f31175h.d(i35);
                        i36 = 1073741824;
                        if (mode == 1073741824) {
                            i37 = 1;
                            zQ2 = eVar3.Q(i35, zB) & true;
                            i18 = 1;
                        } else {
                            i37 = 1;
                            i18 = 0;
                            zQ2 = true;
                        }
                        if (mode2 == 1073741824) {
                            zQ = zQ2 & eVar3.Q(i37, zB);
                            i18++;
                        } else {
                            zQ = zQ2;
                        }
                    } else {
                        boolean z24 = zB & true;
                        boolean z25 = eVar2.f31127a;
                        Object obj2 = eVar2.f31129c;
                        if (z25 || eVar2.f31128b) {
                            e eVar20 = (e) obj2;
                            for (p170w.d dVar5 : eVar20.f30889p0) {
                                dVar5.f();
                                dVar5.f30818a = false;
                                dVar5.f30824d.n();
                                dVar5.f30826e.m();
                            }
                            eVar20.f();
                            i38 = 0;
                            eVar20.f30818a = false;
                            eVar20.f30824d.n();
                            eVar20.f30826e.m();
                            eVar2.f31128b = false;
                        } else {
                            i38 = 0;
                        }
                        eVar2.c((e) eVar2.f31130d);
                        e eVar21 = (e) obj2;
                        eVar21.f30815X = i38;
                        eVar21.f30816Y = i38;
                        int iH7 = eVar21.h(i38);
                        int iH8 = eVar21.h(1);
                        if (eVar2.f31127a) {
                            eVar2.d();
                        }
                        int iP = eVar21.p();
                        int iQ = eVar21.q();
                        fVar2 = fVar;
                        eVar21.f30824d.f31175h.d(iP);
                        eVar21.f30826e.f31175h.d(iQ);
                        eVar2.i();
                        Object obj3 = eVar2.f31131e;
                        z9 = z8;
                        if (iH7 == 2 || iH8 == 2) {
                            if (z24) {
                                Iterator it2 = ((ArrayList) obj3).iterator();
                                while (it2.hasNext()) {
                                    if (!((p) it2.next()).k()) {
                                        z24 = false;
                                        break;
                                    }
                                }
                            }
                            if (z24 && iH7 == 2) {
                                eVar21.I(1);
                                eVar21.K(eVar2.e(eVar21, 0));
                                eVar21.f30824d.f31172e.d(eVar21.o());
                            }
                            if (z24 && iH8 == 2) {
                                i39 = 1;
                                eVar21.J(1);
                                eVar21.H(eVar2.e(eVar21, 1));
                                eVar21.f30826e.f31172e.d(eVar21.i());
                            }
                            iArr3 = eVar21.f30847o0;
                            i17 = i15;
                            i40 = iArr3[0];
                            if (i40 != i39 || i40 == 4) {
                                int iO5 = eVar21.o() + iP;
                                eVar21.f30824d.f31176i.d(iO5);
                                eVar21.f30824d.f31172e.d(iO5 - iP);
                                eVar2.i();
                                i41 = iArr3[1];
                                if (i41 != 1 || i41 == 4) {
                                    int i55 = eVar21.i() + iQ;
                                    eVar21.f30826e.f31176i.d(i55);
                                    eVar21.f30826e.f31172e.d(i55 - iQ);
                                }
                                eVar2.i();
                                z19 = true;
                            } else {
                                z19 = false;
                            }
                            ArrayList<p> arrayList2 = (ArrayList) obj3;
                            for (p pVar2 : arrayList2) {
                                if (pVar2.f31169b == eVar21 || pVar2.f31174g) {
                                    pVar2.e();
                                }
                            }
                            it = arrayList2.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    z20 = true;
                                    break;
                                }
                                pVar = (p) it.next();
                                if (!z19 || pVar.f31169b != eVar21) {
                                    if (pVar.f31175h.f31145j || ((!pVar.f31176i.f31145j && !(pVar instanceof p178x.i)) || (!pVar.f31172e.f31145j && !(pVar instanceof p178x.c) && !(pVar instanceof p178x.i)))) {
                                        z20 = false;
                                        break;
                                    }
                                }
                            }
                            eVar21.I(iH7);
                            eVar21.J(iH8);
                            zQ = z20;
                            i36 = 1073741824;
                            i18 = 2;
                        } else {
                            iO2 = iO2;
                        }
                        i39 = 1;
                        iArr3 = eVar21.f30847o0;
                        i17 = i15;
                        i40 = iArr3[0];
                        if (i40 != i39) {
                            int iO6 = eVar21.o() + iP;
                            eVar21.f30824d.f31176i.d(iO6);
                            eVar21.f30824d.f31172e.d(iO6 - iP);
                            eVar2.i();
                            i41 = iArr3[1];
                            if (i41 != 1) {
                                int i56 = eVar21.i() + iQ;
                                eVar21.f30826e.f31176i.d(i56);
                                eVar21.f30826e.f31172e.d(i56 - iQ);
                            } else {
                                int i57 = eVar21.i() + iQ;
                                eVar21.f30826e.f31176i.d(i57);
                                eVar21.f30826e.f31172e.d(i57 - iQ);
                            }
                            eVar2.i();
                            z19 = true;
                        } else {
                            int iO7 = eVar21.o() + iP;
                            eVar21.f30824d.f31176i.d(iO7);
                            eVar21.f30824d.f31172e.d(iO7 - iP);
                            eVar2.i();
                            i41 = iArr3[1];
                            if (i41 != 1) {
                                int i58 = eVar21.i() + iQ;
                                eVar21.f30826e.f31176i.d(i58);
                                eVar21.f30826e.f31172e.d(i58 - iQ);
                            } else {
                                int i59 = eVar21.i() + iQ;
                                eVar21.f30826e.f31176i.d(i59);
                                eVar21.f30826e.f31172e.d(i59 - iQ);
                            }
                            eVar2.i();
                            z19 = true;
                        }
                        ArrayList<p> arrayList3 = (ArrayList) obj3;
                        while (r2.hasNext()) {
                            if (pVar2.f31169b == eVar21) {
                            }
                            pVar2.e();
                        }
                        it = arrayList3.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                z20 = true;
                                break;
                            }
                            pVar = (p) it.next();
                            if (!z19) {
                            }
                            if (pVar.f31175h.f31145j) {
                            }
                            z20 = false;
                            break;
                        }
                        eVar21.I(iH7);
                        eVar21.J(iH8);
                        zQ = z20;
                        i36 = 1073741824;
                        i18 = 2;
                    }
                    if (zQ) {
                        if (mode == i36) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        if (mode2 == i36) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        eVar3.L(z17, z18);
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    i18 = 0;
                    zQ = false;
                }
                if (zQ || i18 != 2) {
                    i19 = eVar3.f30861C0;
                    if (size > 0) {
                        size3 = eVar3.f30889p0.size();
                        zS = eVar3.S(64);
                        fVar5 = eVar3.f30873t0;
                        while (i32 < size3) {
                            dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                            if (!(dVar2 instanceof p170w.f) && !(dVar2 instanceof p170w.a)) {
                                dVar2.getClass();
                                if (zS || (kVar = dVar2.f30824d) == null || (mVar = dVar2.f30826e) == null || !kVar.f31172e.f31145j || !mVar.f31172e.f31145j) {
                                    iH = dVar2.h(0);
                                    int iH9 = dVar2.h(1);
                                    if (iH == 3 || dVar2.f30850r == 1 || iH9 != 3 || dVar2.f30851s == 1) {
                                        z15 = false;
                                    } else {
                                        z15 = true;
                                    }
                                    if (!z15 && eVar3.S(1)) {
                                        if (iH == 3 && dVar2.f30850r == 0 && iH9 != 3 && !dVar2.v()) {
                                            z15 = true;
                                        }
                                        if (iH9 == 3 && dVar2.f30851s == 0 && iH != 3 && !dVar2.v()) {
                                            z15 = true;
                                        }
                                        if (iH == 3 || iH9 == 3) {
                                            if (dVar2.f30813V > 0.0f) {
                                            }
                                        }
                                        if (z15) {
                                            uVar.H(0, dVar2, fVar5);
                                        }
                                    }
                                    if (z15) {
                                        uVar.H(0, dVar2, fVar5);
                                    }
                                }
                            }
                        }
                        constraintLayout = fVar5.f31548a;
                        childCount = constraintLayout.getChildCount();
                        while (i33 < childCount) {
                            constraintLayout.getChildAt(i33);
                        }
                        arrayList = constraintLayout.f8951H;
                        size4 = arrayList.size();
                        if (size4 > 0) {
                            while (i34 < size4) {
                                ((c) arrayList.get(i34)).getClass();
                            }
                        }
                    }
                    uVar.V(eVar3);
                    size2 = ((ArrayList) uVar.f27278H).size();
                    i20 = iO2;
                    i21 = i17;
                    if (size > 0) {
                        uVar.T(eVar3, 0, i20, i21);
                    }
                    if (size2 > 0) {
                        iArr2 = eVar3.f30847o0;
                        if (iArr2[0] == 2) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (iArr2[1] == 2) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        int iMax13 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                        iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                        while (i22 < size2) {
                        }
                        i23 = 2;
                        i24 = 0;
                        while (i24 < i23) {
                            i25 = 0;
                            z12 = false;
                            while (i25 < size2) {
                                dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                                if (!(dVar instanceof g) || (dVar instanceof p170w.f) || dVar.f30829f0 == 8 || (z9 && dVar.f30824d.f31172e.f31145j && dVar.f30826e.f31172e.f31145j)) {
                                    i28 = i19;
                                    i29 = size2;
                                    z13 = z12;
                                    fVar4 = fVar2;
                                } else {
                                    iO3 = dVar.o();
                                    i30 = dVar.i();
                                    i29 = size2;
                                    int i510 = dVar.f30817Z;
                                    i28 = i19;
                                    fVar4 = fVar2;
                                    boolean zH6 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                                    iO4 = dVar.o();
                                    z14 = zH6;
                                    i31 = dVar.i();
                                    if (iO4 != iO3) {
                                        dVar.K(iO4);
                                        if (!z10 && dVar.p() + dVar.f30811T > iMax13) {
                                            iMax13 = Math.max(iMax13, dVar.g(4).d() + dVar.p() + dVar.f30811T);
                                        }
                                        z14 = true;
                                    }
                                    if (i31 != i30) {
                                        dVar.H(i31);
                                        if (z11 && dVar.q() + dVar.f30812U > iMax3) {
                                            iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                        }
                                        z13 = true;
                                    } else {
                                        z13 = z14;
                                    }
                                    if (!dVar.f30796E && i510 != dVar.f30817Z) {
                                        z13 = true;
                                    }
                                }
                                i25++;
                                size2 = i29;
                                fVar2 = fVar4;
                                z12 = z13;
                                i19 = i28;
                            }
                            i26 = i19;
                            i27 = size2;
                            fVar3 = fVar2;
                            if (z12) {
                                eVar3 = eVar;
                                i19 = i26;
                                break;
                            }
                            i24++;
                            eVar3 = eVar;
                            uVar.T(eVar3, i24, i20, i21);
                            fVar2 = fVar3;
                            i19 = i26;
                            i23 = 2;
                            size2 = i27;
                        }
                    }
                    eVar3.f30861C0 = i19;
                    d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
                }
                return;
            }
            if (childCount2 == 0) {
                iMax2 = Math.max(0, this.f8954K);
            } else {
                i11 = 2;
            }
            iMin2 = 0;
            iO = eVar.o();
            eVar2 = eVar3.f30871r0;
            i12 = iMin;
            if (i12 == iO) {
                eVar2.f31128b = true;
            } else {
                eVar2.f31128b = true;
            }
            eVar3.f30815X = 0;
            eVar3.f30816Y = 0;
            int i415 = this.f8955L - i48;
            iArr = eVar3.f30794C;
            iArr[0] = i415;
            iArr[1] = this.f8956M - i47;
            eVar3.f30819a0 = 0;
            eVar3.f30821b0 = 0;
            eVar3.I(i44);
            eVar3.K(i12);
            eVar3.J(i11);
            eVar3.H(iMin2);
            i13 = this.f8953J - i48;
            if (i13 < 0) {
                eVar3.f30819a0 = 0;
            } else {
                eVar3.f30819a0 = i13;
            }
            i14 = this.f8954K - i47;
            if (i14 < 0) {
                eVar3.f30821b0 = 0;
            } else {
                eVar3.f30821b0 = i14;
            }
            eVar3.f30876w0 = iMax6;
            eVar3.f30877x0 = iMax4;
            uVar = eVar3.f30870q0;
            uVar.getClass();
            fVar = eVar3.f30873t0;
            size = eVar3.f30889p0.size();
            iO2 = eVar.o();
            i15 = eVar.i();
            zB = i.b(i8, 128);
            if (zB) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (z7) {
                i42 = 0;
                while (true) {
                    if (i42 < size) {
                        dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                        iArr4 = dVar3.f30847o0;
                        if (iArr4[0] == 3) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        if (iArr4[1] == 3) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        if (z21) {
                            z23 = false;
                        } else {
                            z23 = false;
                        }
                        i42 = !dVar3.v() ? i42 + 1 : i42 + 1;
                        i16 = 1073741824;
                        z7 = false;
                    } else {
                        i16 = 1073741824;
                    }
                }
            } else {
                i16 = 1073741824;
            }
            z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
            if (z8) {
                iMin3 = Math.min(iArr[0], i45);
                iMin4 = Math.min(iArr[1], i46);
                if (mode == 1073741824) {
                    eVar3.K(iMin3);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode2 == 1073741824) {
                    eVar3.H(iMin4);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode == 1073741824) {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar116 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar114 = dVar4.f30824d;
                            kVar114.f31172e.f31145j = false;
                            kVar114.f31174g = false;
                            kVar114.n();
                            m mVar114 = dVar4.f30826e;
                            mVar114.f31172e.f31145j = false;
                            mVar114.f31174g = false;
                            mVar114.m();
                        }
                        i35 = 0;
                        eVar116.f();
                        eVar116.f30818a = false;
                        k kVar115 = eVar116.f30824d;
                        kVar115.f31172e.f31145j = false;
                        kVar115.f31174g = false;
                        kVar115.n();
                        m mVar115 = eVar116.f30826e;
                        mVar115.f31172e.f31145j = false;
                        mVar115.f31174g = false;
                        mVar115.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar117 = (e) obj;
                    eVar117.f30815X = i35;
                    eVar117.f30816Y = i35;
                    eVar117.f30824d.f31175h.d(i35);
                    eVar117.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar118 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar116 = dVar4.f30824d;
                            kVar116.f31172e.f31145j = false;
                            kVar116.f31174g = false;
                            kVar116.n();
                            m mVar116 = dVar4.f30826e;
                            mVar116.f31172e.f31145j = false;
                            mVar116.f31174g = false;
                            mVar116.m();
                        }
                        i35 = 0;
                        eVar118.f();
                        eVar118.f30818a = false;
                        k kVar117 = eVar118.f30824d;
                        kVar117.f31172e.f31145j = false;
                        kVar117.f31174g = false;
                        kVar117.n();
                        m mVar117 = eVar118.f30826e;
                        mVar117.f31172e.f31145j = false;
                        mVar117.f31174g = false;
                        mVar117.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar119 = (e) obj;
                    eVar119.f30815X = i35;
                    eVar119.f30816Y = i35;
                    eVar119.f30824d.f31175h.d(i35);
                    eVar119.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                }
                if (zQ) {
                    if (mode == i36) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    if (mode2 == i36) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    eVar3.L(z17, z18);
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                i18 = 0;
                zQ = false;
            }
            if (zQ) {
            }
            i19 = eVar3.f30861C0;
            if (size > 0) {
                size3 = eVar3.f30889p0.size();
                zS = eVar3.S(64);
                fVar5 = eVar3.f30873t0;
                while (i32 < size3) {
                    dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                    if (!(dVar2 instanceof p170w.f)) {
                        dVar2.getClass();
                        if (zS) {
                        }
                        iH = dVar2.h(0);
                        int iH10 = dVar2.h(1);
                        if (iH == 3) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (!z15) {
                            if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        } else if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    }
                }
                constraintLayout = fVar5.f31548a;
                childCount = constraintLayout.getChildCount();
                while (i33 < childCount) {
                    constraintLayout.getChildAt(i33);
                }
                arrayList = constraintLayout.f8951H;
                size4 = arrayList.size();
                if (size4 > 0) {
                    while (i34 < size4) {
                        ((c) arrayList.get(i34)).getClass();
                    }
                }
            }
            uVar.V(eVar3);
            size2 = ((ArrayList) uVar.f27278H).size();
            i20 = iO2;
            i21 = i17;
            if (size > 0) {
                uVar.T(eVar3, 0, i20, i21);
            }
            if (size2 > 0) {
                iArr2 = eVar3.f30847o0;
                if (iArr2[0] == 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (iArr2[1] == 2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                int iMax14 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                while (i22 < size2) {
                }
                i23 = 2;
                i24 = 0;
                while (i24 < i23) {
                    i25 = 0;
                    z12 = false;
                    while (i25 < size2) {
                        dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                        if (!(dVar instanceof g)) {
                            i28 = i19;
                            i29 = size2;
                            z13 = z12;
                            fVar4 = fVar2;
                        } else {
                            iO3 = dVar.o();
                            i30 = dVar.i();
                            i29 = size2;
                            int i511 = dVar.f30817Z;
                            i28 = i19;
                            fVar4 = fVar2;
                            boolean zH7 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                            iO4 = dVar.o();
                            z14 = zH7;
                            i31 = dVar.i();
                            if (iO4 != iO3) {
                                dVar.K(iO4);
                                if (!z10) {
                                }
                                z14 = true;
                            }
                            if (i31 != i30) {
                                dVar.H(i31);
                                if (z11) {
                                    iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                }
                                z13 = true;
                            } else {
                                z13 = z14;
                            }
                            if (!dVar.f30796E) {
                            }
                        }
                        i25++;
                        size2 = i29;
                        fVar2 = fVar4;
                        z12 = z13;
                        i19 = i28;
                    }
                    i26 = i19;
                    i27 = size2;
                    fVar3 = fVar2;
                    if (z12) {
                        eVar3 = eVar;
                        i19 = i26;
                        break;
                    }
                    i24++;
                    eVar3 = eVar;
                    uVar.T(eVar3, i24, i20, i21);
                    fVar2 = fVar3;
                    i19 = i26;
                    i23 = 2;
                    size2 = i27;
                }
            }
            eVar3.f30861C0 = i19;
            d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
            iMin2 = iMax2;
            i11 = 2;
            iO = eVar.o();
            eVar2 = eVar3.f30871r0;
            i12 = iMin;
            if (i12 == iO) {
                eVar2.f31128b = true;
            } else {
                eVar2.f31128b = true;
            }
            eVar3.f30815X = 0;
            eVar3.f30816Y = 0;
            int i416 = this.f8955L - i48;
            iArr = eVar3.f30794C;
            iArr[0] = i416;
            iArr[1] = this.f8956M - i47;
            eVar3.f30819a0 = 0;
            eVar3.f30821b0 = 0;
            eVar3.I(i44);
            eVar3.K(i12);
            eVar3.J(i11);
            eVar3.H(iMin2);
            i13 = this.f8953J - i48;
            if (i13 < 0) {
                eVar3.f30819a0 = 0;
            } else {
                eVar3.f30819a0 = i13;
            }
            i14 = this.f8954K - i47;
            if (i14 < 0) {
                eVar3.f30821b0 = 0;
            } else {
                eVar3.f30821b0 = i14;
            }
            eVar3.f30876w0 = iMax6;
            eVar3.f30877x0 = iMax4;
            uVar = eVar3.f30870q0;
            uVar.getClass();
            fVar = eVar3.f30873t0;
            size = eVar3.f30889p0.size();
            iO2 = eVar.o();
            i15 = eVar.i();
            zB = i.b(i8, 128);
            if (zB) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (z7) {
                i42 = 0;
                while (true) {
                    if (i42 < size) {
                        dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                        iArr4 = dVar3.f30847o0;
                        if (iArr4[0] == 3) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        if (iArr4[1] == 3) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        if (z21) {
                            z23 = false;
                        } else {
                            z23 = false;
                        }
                        if (!dVar3.v()) {
                        }
                        i16 = 1073741824;
                        z7 = false;
                    } else {
                        i16 = 1073741824;
                    }
                }
            } else {
                i16 = 1073741824;
            }
            z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
            if (z8) {
                iMin3 = Math.min(iArr[0], i45);
                iMin4 = Math.min(iArr[1], i46);
                if (mode == 1073741824) {
                    eVar3.K(iMin3);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode2 == 1073741824) {
                    eVar3.H(iMin4);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode == 1073741824) {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar1110 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar118 = dVar4.f30824d;
                            kVar118.f31172e.f31145j = false;
                            kVar118.f31174g = false;
                            kVar118.n();
                            m mVar118 = dVar4.f30826e;
                            mVar118.f31172e.f31145j = false;
                            mVar118.f31174g = false;
                            mVar118.m();
                        }
                        i35 = 0;
                        eVar1110.f();
                        eVar1110.f30818a = false;
                        k kVar119 = eVar1110.f30824d;
                        kVar119.f31172e.f31145j = false;
                        kVar119.f31174g = false;
                        kVar119.n();
                        m mVar119 = eVar1110.f30826e;
                        mVar119.f31172e.f31145j = false;
                        mVar119.f31174g = false;
                        mVar119.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar1111 = (e) obj;
                    eVar1111.f30815X = i35;
                    eVar1111.f30816Y = i35;
                    eVar1111.f30824d.f31175h.d(i35);
                    eVar1111.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar1112 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar1110 = dVar4.f30824d;
                            kVar1110.f31172e.f31145j = false;
                            kVar1110.f31174g = false;
                            kVar1110.n();
                            m mVar1110 = dVar4.f30826e;
                            mVar1110.f31172e.f31145j = false;
                            mVar1110.f31174g = false;
                            mVar1110.m();
                        }
                        i35 = 0;
                        eVar1112.f();
                        eVar1112.f30818a = false;
                        k kVar1111 = eVar1112.f30824d;
                        kVar1111.f31172e.f31145j = false;
                        kVar1111.f31174g = false;
                        kVar1111.n();
                        m mVar1111 = eVar1112.f30826e;
                        mVar1111.f31172e.f31145j = false;
                        mVar1111.f31174g = false;
                        mVar1111.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar1113 = (e) obj;
                    eVar1113.f30815X = i35;
                    eVar1113.f30816Y = i35;
                    eVar1113.f30824d.f31175h.d(i35);
                    eVar1113.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                }
                if (zQ) {
                    if (mode == i36) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    if (mode2 == i36) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    eVar3.L(z17, z18);
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                i18 = 0;
                zQ = false;
            }
            if (zQ) {
            }
            i19 = eVar3.f30861C0;
            if (size > 0) {
                size3 = eVar3.f30889p0.size();
                zS = eVar3.S(64);
                fVar5 = eVar3.f30873t0;
                while (i32 < size3) {
                    dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                    if (!(dVar2 instanceof p170w.f)) {
                        dVar2.getClass();
                        if (zS) {
                        }
                        iH = dVar2.h(0);
                        int iH11 = dVar2.h(1);
                        if (iH == 3) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (!z15) {
                            if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        } else if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    }
                }
                constraintLayout = fVar5.f31548a;
                childCount = constraintLayout.getChildCount();
                while (i33 < childCount) {
                    constraintLayout.getChildAt(i33);
                }
                arrayList = constraintLayout.f8951H;
                size4 = arrayList.size();
                if (size4 > 0) {
                    while (i34 < size4) {
                        ((c) arrayList.get(i34)).getClass();
                    }
                }
            }
            uVar.V(eVar3);
            size2 = ((ArrayList) uVar.f27278H).size();
            i20 = iO2;
            i21 = i17;
            if (size > 0) {
                uVar.T(eVar3, 0, i20, i21);
            }
            if (size2 > 0) {
                iArr2 = eVar3.f30847o0;
                if (iArr2[0] == 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (iArr2[1] == 2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                int iMax15 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                while (i22 < size2) {
                }
                i23 = 2;
                i24 = 0;
                while (i24 < i23) {
                    i25 = 0;
                    z12 = false;
                    while (i25 < size2) {
                        dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                        if (!(dVar instanceof g)) {
                            i28 = i19;
                            i29 = size2;
                            z13 = z12;
                            fVar4 = fVar2;
                        } else {
                            iO3 = dVar.o();
                            i30 = dVar.i();
                            i29 = size2;
                            int i512 = dVar.f30817Z;
                            i28 = i19;
                            fVar4 = fVar2;
                            boolean zH8 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                            iO4 = dVar.o();
                            z14 = zH8;
                            i31 = dVar.i();
                            if (iO4 != iO3) {
                                dVar.K(iO4);
                                if (!z10) {
                                }
                                z14 = true;
                            }
                            if (i31 != i30) {
                                dVar.H(i31);
                                if (z11) {
                                    iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                }
                                z13 = true;
                            } else {
                                z13 = z14;
                            }
                            if (!dVar.f30796E) {
                            }
                        }
                        i25++;
                        size2 = i29;
                        fVar2 = fVar4;
                        z12 = z13;
                        i19 = i28;
                    }
                    i26 = i19;
                    i27 = size2;
                    fVar3 = fVar2;
                    if (z12) {
                        eVar3 = eVar;
                        i19 = i26;
                        break;
                    }
                    i24++;
                    eVar3 = eVar;
                    uVar.T(eVar3, i24, i20, i21);
                    fVar2 = fVar3;
                    i19 = i26;
                    i23 = 2;
                    size2 = i27;
                }
            }
            eVar3.f30861C0 = i19;
            d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
        }
        if (childCount2 == 0) {
            iMax = Math.max(0, this.f8953J);
        } else {
            i44 = 2;
        }
        iMin = 0;
        if (mode2 != Integer.MIN_VALUE) {
            if (childCount2 == 0) {
                iMax2 = Math.max(0, this.f8954K);
            } else {
                iMin2 = i46;
            }
            i11 = 2;
            iO = eVar.o();
            eVar2 = eVar3.f30871r0;
            i12 = iMin;
            if (i12 == iO) {
                eVar2.f31128b = true;
            } else {
                eVar2.f31128b = true;
            }
            eVar3.f30815X = 0;
            eVar3.f30816Y = 0;
            int i417 = this.f8955L - i48;
            iArr = eVar3.f30794C;
            iArr[0] = i417;
            iArr[1] = this.f8956M - i47;
            eVar3.f30819a0 = 0;
            eVar3.f30821b0 = 0;
            eVar3.I(i44);
            eVar3.K(i12);
            eVar3.J(i11);
            eVar3.H(iMin2);
            i13 = this.f8953J - i48;
            if (i13 < 0) {
                eVar3.f30819a0 = 0;
            } else {
                eVar3.f30819a0 = i13;
            }
            i14 = this.f8954K - i47;
            if (i14 < 0) {
                eVar3.f30821b0 = 0;
            } else {
                eVar3.f30821b0 = i14;
            }
            eVar3.f30876w0 = iMax6;
            eVar3.f30877x0 = iMax4;
            uVar = eVar3.f30870q0;
            uVar.getClass();
            fVar = eVar3.f30873t0;
            size = eVar3.f30889p0.size();
            iO2 = eVar.o();
            i15 = eVar.i();
            zB = i.b(i8, 128);
            if (zB) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (z7) {
                i42 = 0;
                while (true) {
                    if (i42 < size) {
                        dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                        iArr4 = dVar3.f30847o0;
                        if (iArr4[0] == 3) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        if (iArr4[1] == 3) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        if (z21) {
                            z23 = false;
                        } else {
                            z23 = false;
                        }
                        if (!dVar3.v()) {
                        }
                        i16 = 1073741824;
                        z7 = false;
                    } else {
                        i16 = 1073741824;
                    }
                }
            } else {
                i16 = 1073741824;
            }
            z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
            if (z8) {
                iMin3 = Math.min(iArr[0], i45);
                iMin4 = Math.min(iArr[1], i46);
                if (mode == 1073741824) {
                    eVar3.K(iMin3);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode2 == 1073741824) {
                    eVar3.H(iMin4);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode == 1073741824) {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar1114 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar1112 = dVar4.f30824d;
                            kVar1112.f31172e.f31145j = false;
                            kVar1112.f31174g = false;
                            kVar1112.n();
                            m mVar1112 = dVar4.f30826e;
                            mVar1112.f31172e.f31145j = false;
                            mVar1112.f31174g = false;
                            mVar1112.m();
                        }
                        i35 = 0;
                        eVar1114.f();
                        eVar1114.f30818a = false;
                        k kVar1113 = eVar1114.f30824d;
                        kVar1113.f31172e.f31145j = false;
                        kVar1113.f31174g = false;
                        kVar1113.n();
                        m mVar1113 = eVar1114.f30826e;
                        mVar1113.f31172e.f31145j = false;
                        mVar1113.f31174g = false;
                        mVar1113.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar1115 = (e) obj;
                    eVar1115.f30815X = i35;
                    eVar1115.f30816Y = i35;
                    eVar1115.f30824d.f31175h.d(i35);
                    eVar1115.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar1116 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar1114 = dVar4.f30824d;
                            kVar1114.f31172e.f31145j = false;
                            kVar1114.f31174g = false;
                            kVar1114.n();
                            m mVar1114 = dVar4.f30826e;
                            mVar1114.f31172e.f31145j = false;
                            mVar1114.f31174g = false;
                            mVar1114.m();
                        }
                        i35 = 0;
                        eVar1116.f();
                        eVar1116.f30818a = false;
                        k kVar1115 = eVar1116.f30824d;
                        kVar1115.f31172e.f31145j = false;
                        kVar1115.f31174g = false;
                        kVar1115.n();
                        m mVar1115 = eVar1116.f30826e;
                        mVar1115.f31172e.f31145j = false;
                        mVar1115.f31174g = false;
                        mVar1115.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar1117 = (e) obj;
                    eVar1117.f30815X = i35;
                    eVar1117.f30816Y = i35;
                    eVar1117.f30824d.f31175h.d(i35);
                    eVar1117.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                }
                if (zQ) {
                    if (mode == i36) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    if (mode2 == i36) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    eVar3.L(z17, z18);
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                i18 = 0;
                zQ = false;
            }
            if (zQ) {
            }
            i19 = eVar3.f30861C0;
            if (size > 0) {
                size3 = eVar3.f30889p0.size();
                zS = eVar3.S(64);
                fVar5 = eVar3.f30873t0;
                while (i32 < size3) {
                    dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                    if (!(dVar2 instanceof p170w.f)) {
                        dVar2.getClass();
                        if (zS) {
                        }
                        iH = dVar2.h(0);
                        int iH12 = dVar2.h(1);
                        if (iH == 3) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (!z15) {
                            if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        } else if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    }
                }
                constraintLayout = fVar5.f31548a;
                childCount = constraintLayout.getChildCount();
                while (i33 < childCount) {
                    constraintLayout.getChildAt(i33);
                }
                arrayList = constraintLayout.f8951H;
                size4 = arrayList.size();
                if (size4 > 0) {
                    while (i34 < size4) {
                        ((c) arrayList.get(i34)).getClass();
                    }
                }
            }
            uVar.V(eVar3);
            size2 = ((ArrayList) uVar.f27278H).size();
            i20 = iO2;
            i21 = i17;
            if (size > 0) {
                uVar.T(eVar3, 0, i20, i21);
            }
            if (size2 > 0) {
                iArr2 = eVar3.f30847o0;
                if (iArr2[0] == 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (iArr2[1] == 2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                int iMax16 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                while (i22 < size2) {
                }
                i23 = 2;
                i24 = 0;
                while (i24 < i23) {
                    i25 = 0;
                    z12 = false;
                    while (i25 < size2) {
                        dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                        if (!(dVar instanceof g)) {
                            i28 = i19;
                            i29 = size2;
                            z13 = z12;
                            fVar4 = fVar2;
                        } else {
                            iO3 = dVar.o();
                            i30 = dVar.i();
                            i29 = size2;
                            int i513 = dVar.f30817Z;
                            i28 = i19;
                            fVar4 = fVar2;
                            boolean zH9 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                            iO4 = dVar.o();
                            z14 = zH9;
                            i31 = dVar.i();
                            if (iO4 != iO3) {
                                dVar.K(iO4);
                                if (!z10) {
                                }
                                z14 = true;
                            }
                            if (i31 != i30) {
                                dVar.H(i31);
                                if (z11) {
                                    iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                }
                                z13 = true;
                            } else {
                                z13 = z14;
                            }
                            if (!dVar.f30796E) {
                            }
                        }
                        i25++;
                        size2 = i29;
                        fVar2 = fVar4;
                        z12 = z13;
                        i19 = i28;
                    }
                    i26 = i19;
                    i27 = size2;
                    fVar3 = fVar2;
                    if (z12) {
                        eVar3 = eVar;
                        i19 = i26;
                        break;
                    }
                    i24++;
                    eVar3 = eVar;
                    uVar.T(eVar3, i24, i20, i21);
                    fVar2 = fVar3;
                    i19 = i26;
                    i23 = 2;
                    size2 = i27;
                }
            }
            eVar3.f30861C0 = i19;
            d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
        }
        if (mode2 != 0) {
            if (mode2 != 1073741824) {
                i11 = 1;
            } else {
                iMin2 = Math.min(this.f8956M - i47, i46);
                i11 = 1;
            }
            iO = eVar.o();
            eVar2 = eVar3.f30871r0;
            i12 = iMin;
            if (i12 == iO) {
                eVar2.f31128b = true;
            } else {
                eVar2.f31128b = true;
            }
            eVar3.f30815X = 0;
            eVar3.f30816Y = 0;
            int i418 = this.f8955L - i48;
            iArr = eVar3.f30794C;
            iArr[0] = i418;
            iArr[1] = this.f8956M - i47;
            eVar3.f30819a0 = 0;
            eVar3.f30821b0 = 0;
            eVar3.I(i44);
            eVar3.K(i12);
            eVar3.J(i11);
            eVar3.H(iMin2);
            i13 = this.f8953J - i48;
            if (i13 < 0) {
                eVar3.f30819a0 = 0;
            } else {
                eVar3.f30819a0 = i13;
            }
            i14 = this.f8954K - i47;
            if (i14 < 0) {
                eVar3.f30821b0 = 0;
            } else {
                eVar3.f30821b0 = i14;
            }
            eVar3.f30876w0 = iMax6;
            eVar3.f30877x0 = iMax4;
            uVar = eVar3.f30870q0;
            uVar.getClass();
            fVar = eVar3.f30873t0;
            size = eVar3.f30889p0.size();
            iO2 = eVar.o();
            i15 = eVar.i();
            zB = i.b(i8, 128);
            if (zB) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (z7) {
                i42 = 0;
                while (true) {
                    if (i42 < size) {
                        dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                        iArr4 = dVar3.f30847o0;
                        if (iArr4[0] == 3) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        if (iArr4[1] == 3) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        if (z21) {
                            z23 = false;
                        } else {
                            z23 = false;
                        }
                        if (!dVar3.v()) {
                        }
                        i16 = 1073741824;
                        z7 = false;
                    } else {
                        i16 = 1073741824;
                    }
                }
            } else {
                i16 = 1073741824;
            }
            z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
            if (z8) {
                iMin3 = Math.min(iArr[0], i45);
                iMin4 = Math.min(iArr[1], i46);
                if (mode == 1073741824) {
                    eVar3.K(iMin3);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode2 == 1073741824) {
                    eVar3.H(iMin4);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode == 1073741824) {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar1118 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar1116 = dVar4.f30824d;
                            kVar1116.f31172e.f31145j = false;
                            kVar1116.f31174g = false;
                            kVar1116.n();
                            m mVar1116 = dVar4.f30826e;
                            mVar1116.f31172e.f31145j = false;
                            mVar1116.f31174g = false;
                            mVar1116.m();
                        }
                        i35 = 0;
                        eVar1118.f();
                        eVar1118.f30818a = false;
                        k kVar1117 = eVar1118.f30824d;
                        kVar1117.f31172e.f31145j = false;
                        kVar1117.f31174g = false;
                        kVar1117.n();
                        m mVar1117 = eVar1118.f30826e;
                        mVar1117.f31172e.f31145j = false;
                        mVar1117.f31174g = false;
                        mVar1117.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar1119 = (e) obj;
                    eVar1119.f30815X = i35;
                    eVar1119.f30816Y = i35;
                    eVar1119.f30824d.f31175h.d(i35);
                    eVar1119.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar11110 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar1118 = dVar4.f30824d;
                            kVar1118.f31172e.f31145j = false;
                            kVar1118.f31174g = false;
                            kVar1118.n();
                            m mVar1118 = dVar4.f30826e;
                            mVar1118.f31172e.f31145j = false;
                            mVar1118.f31174g = false;
                            mVar1118.m();
                        }
                        i35 = 0;
                        eVar11110.f();
                        eVar11110.f30818a = false;
                        k kVar1119 = eVar11110.f30824d;
                        kVar1119.f31172e.f31145j = false;
                        kVar1119.f31174g = false;
                        kVar1119.n();
                        m mVar1119 = eVar11110.f30826e;
                        mVar1119.f31172e.f31145j = false;
                        mVar1119.f31174g = false;
                        mVar1119.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar11111 = (e) obj;
                    eVar11111.f30815X = i35;
                    eVar11111.f30816Y = i35;
                    eVar11111.f30824d.f31175h.d(i35);
                    eVar11111.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                }
                if (zQ) {
                    if (mode == i36) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    if (mode2 == i36) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    eVar3.L(z17, z18);
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                i18 = 0;
                zQ = false;
            }
            if (zQ) {
            }
            i19 = eVar3.f30861C0;
            if (size > 0) {
                size3 = eVar3.f30889p0.size();
                zS = eVar3.S(64);
                fVar5 = eVar3.f30873t0;
                while (i32 < size3) {
                    dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                    if (!(dVar2 instanceof p170w.f)) {
                        dVar2.getClass();
                        if (zS) {
                        }
                        iH = dVar2.h(0);
                        int iH13 = dVar2.h(1);
                        if (iH == 3) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (!z15) {
                            if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        } else if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    }
                }
                constraintLayout = fVar5.f31548a;
                childCount = constraintLayout.getChildCount();
                while (i33 < childCount) {
                    constraintLayout.getChildAt(i33);
                }
                arrayList = constraintLayout.f8951H;
                size4 = arrayList.size();
                if (size4 > 0) {
                    while (i34 < size4) {
                        ((c) arrayList.get(i34)).getClass();
                    }
                }
            }
            uVar.V(eVar3);
            size2 = ((ArrayList) uVar.f27278H).size();
            i20 = iO2;
            i21 = i17;
            if (size > 0) {
                uVar.T(eVar3, 0, i20, i21);
            }
            if (size2 > 0) {
                iArr2 = eVar3.f30847o0;
                if (iArr2[0] == 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (iArr2[1] == 2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                int iMax17 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                while (i22 < size2) {
                }
                i23 = 2;
                i24 = 0;
                while (i24 < i23) {
                    i25 = 0;
                    z12 = false;
                    while (i25 < size2) {
                        dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                        if (!(dVar instanceof g)) {
                            i28 = i19;
                            i29 = size2;
                            z13 = z12;
                            fVar4 = fVar2;
                        } else {
                            iO3 = dVar.o();
                            i30 = dVar.i();
                            i29 = size2;
                            int i514 = dVar.f30817Z;
                            i28 = i19;
                            fVar4 = fVar2;
                            boolean zH10 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                            iO4 = dVar.o();
                            z14 = zH10;
                            i31 = dVar.i();
                            if (iO4 != iO3) {
                                dVar.K(iO4);
                                if (!z10) {
                                }
                                z14 = true;
                            }
                            if (i31 != i30) {
                                dVar.H(i31);
                                if (z11) {
                                    iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                }
                                z13 = true;
                            } else {
                                z13 = z14;
                            }
                            if (!dVar.f30796E) {
                            }
                        }
                        i25++;
                        size2 = i29;
                        fVar2 = fVar4;
                        z12 = z13;
                        i19 = i28;
                    }
                    i26 = i19;
                    i27 = size2;
                    fVar3 = fVar2;
                    if (z12) {
                        eVar3 = eVar;
                        i19 = i26;
                        break;
                    }
                    i24++;
                    eVar3 = eVar;
                    uVar.T(eVar3, i24, i20, i21);
                    fVar2 = fVar3;
                    i19 = i26;
                    i23 = 2;
                    size2 = i27;
                }
            }
            eVar3.f30861C0 = i19;
            d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
        }
        if (childCount2 == 0) {
            iMax2 = Math.max(0, this.f8954K);
        } else {
            i11 = 2;
        }
        iMin2 = 0;
        iO = eVar.o();
        eVar2 = eVar3.f30871r0;
        i12 = iMin;
        if (i12 == iO) {
            eVar2.f31128b = true;
        } else {
            eVar2.f31128b = true;
        }
        eVar3.f30815X = 0;
        eVar3.f30816Y = 0;
        int i419 = this.f8955L - i48;
        iArr = eVar3.f30794C;
        iArr[0] = i419;
        iArr[1] = this.f8956M - i47;
        eVar3.f30819a0 = 0;
        eVar3.f30821b0 = 0;
        eVar3.I(i44);
        eVar3.K(i12);
        eVar3.J(i11);
        eVar3.H(iMin2);
        i13 = this.f8953J - i48;
        if (i13 < 0) {
            eVar3.f30819a0 = 0;
        } else {
            eVar3.f30819a0 = i13;
        }
        i14 = this.f8954K - i47;
        if (i14 < 0) {
            eVar3.f30821b0 = 0;
        } else {
            eVar3.f30821b0 = i14;
        }
        eVar3.f30876w0 = iMax6;
        eVar3.f30877x0 = iMax4;
        uVar = eVar3.f30870q0;
        uVar.getClass();
        fVar = eVar3.f30873t0;
        size = eVar3.f30889p0.size();
        iO2 = eVar.o();
        i15 = eVar.i();
        zB = i.b(i8, 128);
        if (zB) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (z7) {
            i42 = 0;
            while (true) {
                if (i42 < size) {
                    dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                    iArr4 = dVar3.f30847o0;
                    if (iArr4[0] == 3) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    if (iArr4[1] == 3) {
                        z22 = true;
                    } else {
                        z22 = false;
                    }
                    if (z21) {
                        z23 = false;
                    } else {
                        z23 = false;
                    }
                    if (!dVar3.v()) {
                    }
                    i16 = 1073741824;
                    z7 = false;
                } else {
                    i16 = 1073741824;
                }
            }
        } else {
            i16 = 1073741824;
        }
        z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
        if (z8) {
            iMin3 = Math.min(iArr[0], i45);
            iMin4 = Math.min(iArr[1], i46);
            if (mode == 1073741824) {
                eVar3.K(iMin3);
                eVar3.f30871r0.f31127a = true;
            }
            if (mode2 == 1073741824) {
                eVar3.H(iMin4);
                eVar3.f30871r0.f31127a = true;
            }
            if (mode == 1073741824) {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                z16 = eVar2.f31127a;
                obj = eVar2.f31129c;
                if (z16) {
                    e eVar11112 = (e) obj;
                    while (r6.hasNext()) {
                        dVar4.f();
                        dVar4.f30818a = false;
                        k kVar11110 = dVar4.f30824d;
                        kVar11110.f31172e.f31145j = false;
                        kVar11110.f31174g = false;
                        kVar11110.n();
                        m mVar11110 = dVar4.f30826e;
                        mVar11110.f31172e.f31145j = false;
                        mVar11110.f31174g = false;
                        mVar11110.m();
                    }
                    i35 = 0;
                    eVar11112.f();
                    eVar11112.f30818a = false;
                    k kVar11111 = eVar11112.f30824d;
                    kVar11111.f31172e.f31145j = false;
                    kVar11111.f31174g = false;
                    kVar11111.n();
                    m mVar11111 = eVar11112.f30826e;
                    mVar11111.f31172e.f31145j = false;
                    mVar11111.f31174g = false;
                    mVar11111.m();
                    eVar2.d();
                } else {
                    i35 = 0;
                }
                eVar2.c((e) eVar2.f31130d);
                e eVar11113 = (e) obj;
                eVar11113.f30815X = i35;
                eVar11113.f30816Y = i35;
                eVar11113.f30824d.f31175h.d(i35);
                eVar11113.f30826e.f31175h.d(i35);
                i36 = 1073741824;
                if (mode == 1073741824) {
                    i37 = 1;
                    zQ2 = eVar3.Q(i35, zB) & true;
                    i18 = 1;
                } else {
                    i37 = 1;
                    i18 = 0;
                    zQ2 = true;
                }
                if (mode2 == 1073741824) {
                    zQ = zQ2 & eVar3.Q(i37, zB);
                    i18++;
                } else {
                    zQ = zQ2;
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                z16 = eVar2.f31127a;
                obj = eVar2.f31129c;
                if (z16) {
                    e eVar11114 = (e) obj;
                    while (r6.hasNext()) {
                        dVar4.f();
                        dVar4.f30818a = false;
                        k kVar11112 = dVar4.f30824d;
                        kVar11112.f31172e.f31145j = false;
                        kVar11112.f31174g = false;
                        kVar11112.n();
                        m mVar11112 = dVar4.f30826e;
                        mVar11112.f31172e.f31145j = false;
                        mVar11112.f31174g = false;
                        mVar11112.m();
                    }
                    i35 = 0;
                    eVar11114.f();
                    eVar11114.f30818a = false;
                    k kVar11113 = eVar11114.f30824d;
                    kVar11113.f31172e.f31145j = false;
                    kVar11113.f31174g = false;
                    kVar11113.n();
                    m mVar11113 = eVar11114.f30826e;
                    mVar11113.f31172e.f31145j = false;
                    mVar11113.f31174g = false;
                    mVar11113.m();
                    eVar2.d();
                } else {
                    i35 = 0;
                }
                eVar2.c((e) eVar2.f31130d);
                e eVar11115 = (e) obj;
                eVar11115.f30815X = i35;
                eVar11115.f30816Y = i35;
                eVar11115.f30824d.f31175h.d(i35);
                eVar11115.f30826e.f31175h.d(i35);
                i36 = 1073741824;
                if (mode == 1073741824) {
                    i37 = 1;
                    zQ2 = eVar3.Q(i35, zB) & true;
                    i18 = 1;
                } else {
                    i37 = 1;
                    i18 = 0;
                    zQ2 = true;
                }
                if (mode2 == 1073741824) {
                    zQ = zQ2 & eVar3.Q(i37, zB);
                    i18++;
                } else {
                    zQ = zQ2;
                }
            }
            if (zQ) {
                if (mode == i36) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                if (mode2 == i36) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                eVar3.L(z17, z18);
            }
        } else {
            z9 = z8;
            fVar2 = fVar;
            iO2 = iO2;
            i17 = i15;
            i18 = 0;
            zQ = false;
        }
        if (zQ) {
        }
        i19 = eVar3.f30861C0;
        if (size > 0) {
            size3 = eVar3.f30889p0.size();
            zS = eVar3.S(64);
            fVar5 = eVar3.f30873t0;
            while (i32 < size3) {
                dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                if (!(dVar2 instanceof p170w.f)) {
                    dVar2.getClass();
                    if (zS) {
                    }
                    iH = dVar2.h(0);
                    int iH14 = dVar2.h(1);
                    if (iH == 3) {
                        z15 = false;
                    } else {
                        z15 = false;
                    }
                    if (!z15) {
                        if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    } else if (z15) {
                        uVar.H(0, dVar2, fVar5);
                    }
                }
            }
            constraintLayout = fVar5.f31548a;
            childCount = constraintLayout.getChildCount();
            while (i33 < childCount) {
                constraintLayout.getChildAt(i33);
            }
            arrayList = constraintLayout.f8951H;
            size4 = arrayList.size();
            if (size4 > 0) {
                while (i34 < size4) {
                    ((c) arrayList.get(i34)).getClass();
                }
            }
        }
        uVar.V(eVar3);
        size2 = ((ArrayList) uVar.f27278H).size();
        i20 = iO2;
        i21 = i17;
        if (size > 0) {
            uVar.T(eVar3, 0, i20, i21);
        }
        if (size2 > 0) {
            iArr2 = eVar3.f30847o0;
            if (iArr2[0] == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (iArr2[1] == 2) {
                z11 = true;
            } else {
                z11 = false;
            }
            int iMax18 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
            iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
            while (i22 < size2) {
            }
            i23 = 2;
            i24 = 0;
            while (i24 < i23) {
                i25 = 0;
                z12 = false;
                while (i25 < size2) {
                    dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                    if (!(dVar instanceof g)) {
                        i28 = i19;
                        i29 = size2;
                        z13 = z12;
                        fVar4 = fVar2;
                    } else {
                        iO3 = dVar.o();
                        i30 = dVar.i();
                        i29 = size2;
                        int i515 = dVar.f30817Z;
                        i28 = i19;
                        fVar4 = fVar2;
                        boolean zH11 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                        iO4 = dVar.o();
                        z14 = zH11;
                        i31 = dVar.i();
                        if (iO4 != iO3) {
                            dVar.K(iO4);
                            if (!z10) {
                            }
                            z14 = true;
                        }
                        if (i31 != i30) {
                            dVar.H(i31);
                            if (z11) {
                                iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                            }
                            z13 = true;
                        } else {
                            z13 = z14;
                        }
                        if (!dVar.f30796E) {
                        }
                    }
                    i25++;
                    size2 = i29;
                    fVar2 = fVar4;
                    z12 = z13;
                    i19 = i28;
                }
                i26 = i19;
                i27 = size2;
                fVar3 = fVar2;
                if (z12) {
                    eVar3 = eVar;
                    i19 = i26;
                    break;
                }
                i24++;
                eVar3 = eVar;
                uVar.T(eVar3, i24, i20, i21);
                fVar2 = fVar3;
                i19 = i26;
                i23 = 2;
                size2 = i27;
            }
        }
        eVar3.f30861C0 = i19;
        d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
        iMin2 = iMax2;
        i11 = 2;
        iO = eVar.o();
        eVar2 = eVar3.f30871r0;
        i12 = iMin;
        if (i12 == iO) {
            eVar2.f31128b = true;
        } else {
            eVar2.f31128b = true;
        }
        eVar3.f30815X = 0;
        eVar3.f30816Y = 0;
        int i4110 = this.f8955L - i48;
        iArr = eVar3.f30794C;
        iArr[0] = i4110;
        iArr[1] = this.f8956M - i47;
        eVar3.f30819a0 = 0;
        eVar3.f30821b0 = 0;
        eVar3.I(i44);
        eVar3.K(i12);
        eVar3.J(i11);
        eVar3.H(iMin2);
        i13 = this.f8953J - i48;
        if (i13 < 0) {
            eVar3.f30819a0 = 0;
        } else {
            eVar3.f30819a0 = i13;
        }
        i14 = this.f8954K - i47;
        if (i14 < 0) {
            eVar3.f30821b0 = 0;
        } else {
            eVar3.f30821b0 = i14;
        }
        eVar3.f30876w0 = iMax6;
        eVar3.f30877x0 = iMax4;
        uVar = eVar3.f30870q0;
        uVar.getClass();
        fVar = eVar3.f30873t0;
        size = eVar3.f30889p0.size();
        iO2 = eVar.o();
        i15 = eVar.i();
        zB = i.b(i8, 128);
        if (zB) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (z7) {
            i42 = 0;
            while (true) {
                if (i42 < size) {
                    dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                    iArr4 = dVar3.f30847o0;
                    if (iArr4[0] == 3) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    if (iArr4[1] == 3) {
                        z22 = true;
                    } else {
                        z22 = false;
                    }
                    if (z21) {
                        z23 = false;
                    } else {
                        z23 = false;
                    }
                    if (!dVar3.v()) {
                    }
                    i16 = 1073741824;
                    z7 = false;
                } else {
                    i16 = 1073741824;
                }
            }
        } else {
            i16 = 1073741824;
        }
        z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
        if (z8) {
            iMin3 = Math.min(iArr[0], i45);
            iMin4 = Math.min(iArr[1], i46);
            if (mode == 1073741824) {
                eVar3.K(iMin3);
                eVar3.f30871r0.f31127a = true;
            }
            if (mode2 == 1073741824) {
                eVar3.H(iMin4);
                eVar3.f30871r0.f31127a = true;
            }
            if (mode == 1073741824) {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                z16 = eVar2.f31127a;
                obj = eVar2.f31129c;
                if (z16) {
                    e eVar11116 = (e) obj;
                    while (r6.hasNext()) {
                        dVar4.f();
                        dVar4.f30818a = false;
                        k kVar11114 = dVar4.f30824d;
                        kVar11114.f31172e.f31145j = false;
                        kVar11114.f31174g = false;
                        kVar11114.n();
                        m mVar11114 = dVar4.f30826e;
                        mVar11114.f31172e.f31145j = false;
                        mVar11114.f31174g = false;
                        mVar11114.m();
                    }
                    i35 = 0;
                    eVar11116.f();
                    eVar11116.f30818a = false;
                    k kVar11115 = eVar11116.f30824d;
                    kVar11115.f31172e.f31145j = false;
                    kVar11115.f31174g = false;
                    kVar11115.n();
                    m mVar11115 = eVar11116.f30826e;
                    mVar11115.f31172e.f31145j = false;
                    mVar11115.f31174g = false;
                    mVar11115.m();
                    eVar2.d();
                } else {
                    i35 = 0;
                }
                eVar2.c((e) eVar2.f31130d);
                e eVar11117 = (e) obj;
                eVar11117.f30815X = i35;
                eVar11117.f30816Y = i35;
                eVar11117.f30824d.f31175h.d(i35);
                eVar11117.f30826e.f31175h.d(i35);
                i36 = 1073741824;
                if (mode == 1073741824) {
                    i37 = 1;
                    zQ2 = eVar3.Q(i35, zB) & true;
                    i18 = 1;
                } else {
                    i37 = 1;
                    i18 = 0;
                    zQ2 = true;
                }
                if (mode2 == 1073741824) {
                    zQ = zQ2 & eVar3.Q(i37, zB);
                    i18++;
                } else {
                    zQ = zQ2;
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                z16 = eVar2.f31127a;
                obj = eVar2.f31129c;
                if (z16) {
                    e eVar11118 = (e) obj;
                    while (r6.hasNext()) {
                        dVar4.f();
                        dVar4.f30818a = false;
                        k kVar11116 = dVar4.f30824d;
                        kVar11116.f31172e.f31145j = false;
                        kVar11116.f31174g = false;
                        kVar11116.n();
                        m mVar11116 = dVar4.f30826e;
                        mVar11116.f31172e.f31145j = false;
                        mVar11116.f31174g = false;
                        mVar11116.m();
                    }
                    i35 = 0;
                    eVar11118.f();
                    eVar11118.f30818a = false;
                    k kVar11117 = eVar11118.f30824d;
                    kVar11117.f31172e.f31145j = false;
                    kVar11117.f31174g = false;
                    kVar11117.n();
                    m mVar11117 = eVar11118.f30826e;
                    mVar11117.f31172e.f31145j = false;
                    mVar11117.f31174g = false;
                    mVar11117.m();
                    eVar2.d();
                } else {
                    i35 = 0;
                }
                eVar2.c((e) eVar2.f31130d);
                e eVar11119 = (e) obj;
                eVar11119.f30815X = i35;
                eVar11119.f30816Y = i35;
                eVar11119.f30824d.f31175h.d(i35);
                eVar11119.f30826e.f31175h.d(i35);
                i36 = 1073741824;
                if (mode == 1073741824) {
                    i37 = 1;
                    zQ2 = eVar3.Q(i35, zB) & true;
                    i18 = 1;
                } else {
                    i37 = 1;
                    i18 = 0;
                    zQ2 = true;
                }
                if (mode2 == 1073741824) {
                    zQ = zQ2 & eVar3.Q(i37, zB);
                    i18++;
                } else {
                    zQ = zQ2;
                }
            }
            if (zQ) {
                if (mode == i36) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                if (mode2 == i36) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                eVar3.L(z17, z18);
            }
        } else {
            z9 = z8;
            fVar2 = fVar;
            iO2 = iO2;
            i17 = i15;
            i18 = 0;
            zQ = false;
        }
        if (zQ) {
        }
        i19 = eVar3.f30861C0;
        if (size > 0) {
            size3 = eVar3.f30889p0.size();
            zS = eVar3.S(64);
            fVar5 = eVar3.f30873t0;
            while (i32 < size3) {
                dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                if (!(dVar2 instanceof p170w.f)) {
                    dVar2.getClass();
                    if (zS) {
                    }
                    iH = dVar2.h(0);
                    int iH15 = dVar2.h(1);
                    if (iH == 3) {
                        z15 = false;
                    } else {
                        z15 = false;
                    }
                    if (!z15) {
                        if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    } else if (z15) {
                        uVar.H(0, dVar2, fVar5);
                    }
                }
            }
            constraintLayout = fVar5.f31548a;
            childCount = constraintLayout.getChildCount();
            while (i33 < childCount) {
                constraintLayout.getChildAt(i33);
            }
            arrayList = constraintLayout.f8951H;
            size4 = arrayList.size();
            if (size4 > 0) {
                while (i34 < size4) {
                    ((c) arrayList.get(i34)).getClass();
                }
            }
        }
        uVar.V(eVar3);
        size2 = ((ArrayList) uVar.f27278H).size();
        i20 = iO2;
        i21 = i17;
        if (size > 0) {
            uVar.T(eVar3, 0, i20, i21);
        }
        if (size2 > 0) {
            iArr2 = eVar3.f30847o0;
            if (iArr2[0] == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (iArr2[1] == 2) {
                z11 = true;
            } else {
                z11 = false;
            }
            int iMax19 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
            iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
            while (i22 < size2) {
            }
            i23 = 2;
            i24 = 0;
            while (i24 < i23) {
                i25 = 0;
                z12 = false;
                while (i25 < size2) {
                    dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                    if (!(dVar instanceof g)) {
                        i28 = i19;
                        i29 = size2;
                        z13 = z12;
                        fVar4 = fVar2;
                    } else {
                        iO3 = dVar.o();
                        i30 = dVar.i();
                        i29 = size2;
                        int i516 = dVar.f30817Z;
                        i28 = i19;
                        fVar4 = fVar2;
                        boolean zH12 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                        iO4 = dVar.o();
                        z14 = zH12;
                        i31 = dVar.i();
                        if (iO4 != iO3) {
                            dVar.K(iO4);
                            if (!z10) {
                            }
                            z14 = true;
                        }
                        if (i31 != i30) {
                            dVar.H(i31);
                            if (z11) {
                                iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                            }
                            z13 = true;
                        } else {
                            z13 = z14;
                        }
                        if (!dVar.f30796E) {
                        }
                    }
                    i25++;
                    size2 = i29;
                    fVar2 = fVar4;
                    z12 = z13;
                    i19 = i28;
                }
                i26 = i19;
                i27 = size2;
                fVar3 = fVar2;
                if (z12) {
                    eVar3 = eVar;
                    i19 = i26;
                    break;
                }
                i24++;
                eVar3 = eVar;
                uVar.T(eVar3, i24, i20, i21);
                fVar2 = fVar3;
                i19 = i26;
                i23 = 2;
                size2 = i27;
            }
        }
        eVar3.f30861C0 = i19;
        d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
        iMin = iMax;
        i44 = 2;
        if (mode2 != Integer.MIN_VALUE) {
            if (childCount2 == 0) {
                iMax2 = Math.max(0, this.f8954K);
            } else {
                iMin2 = i46;
            }
            i11 = 2;
            iO = eVar.o();
            eVar2 = eVar3.f30871r0;
            i12 = iMin;
            if (i12 == iO) {
                eVar2.f31128b = true;
            } else {
                eVar2.f31128b = true;
            }
            eVar3.f30815X = 0;
            eVar3.f30816Y = 0;
            int i4111 = this.f8955L - i48;
            iArr = eVar3.f30794C;
            iArr[0] = i4111;
            iArr[1] = this.f8956M - i47;
            eVar3.f30819a0 = 0;
            eVar3.f30821b0 = 0;
            eVar3.I(i44);
            eVar3.K(i12);
            eVar3.J(i11);
            eVar3.H(iMin2);
            i13 = this.f8953J - i48;
            if (i13 < 0) {
                eVar3.f30819a0 = 0;
            } else {
                eVar3.f30819a0 = i13;
            }
            i14 = this.f8954K - i47;
            if (i14 < 0) {
                eVar3.f30821b0 = 0;
            } else {
                eVar3.f30821b0 = i14;
            }
            eVar3.f30876w0 = iMax6;
            eVar3.f30877x0 = iMax4;
            uVar = eVar3.f30870q0;
            uVar.getClass();
            fVar = eVar3.f30873t0;
            size = eVar3.f30889p0.size();
            iO2 = eVar.o();
            i15 = eVar.i();
            zB = i.b(i8, 128);
            if (zB) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (z7) {
                i42 = 0;
                while (true) {
                    if (i42 < size) {
                        dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                        iArr4 = dVar3.f30847o0;
                        if (iArr4[0] == 3) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        if (iArr4[1] == 3) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        if (z21) {
                            z23 = false;
                        } else {
                            z23 = false;
                        }
                        if (!dVar3.v()) {
                        }
                        i16 = 1073741824;
                        z7 = false;
                    } else {
                        i16 = 1073741824;
                    }
                }
            } else {
                i16 = 1073741824;
            }
            z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
            if (z8) {
                iMin3 = Math.min(iArr[0], i45);
                iMin4 = Math.min(iArr[1], i46);
                if (mode == 1073741824) {
                    eVar3.K(iMin3);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode2 == 1073741824) {
                    eVar3.H(iMin4);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode == 1073741824) {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar111110 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar11118 = dVar4.f30824d;
                            kVar11118.f31172e.f31145j = false;
                            kVar11118.f31174g = false;
                            kVar11118.n();
                            m mVar11118 = dVar4.f30826e;
                            mVar11118.f31172e.f31145j = false;
                            mVar11118.f31174g = false;
                            mVar11118.m();
                        }
                        i35 = 0;
                        eVar111110.f();
                        eVar111110.f30818a = false;
                        k kVar11119 = eVar111110.f30824d;
                        kVar11119.f31172e.f31145j = false;
                        kVar11119.f31174g = false;
                        kVar11119.n();
                        m mVar11119 = eVar111110.f30826e;
                        mVar11119.f31172e.f31145j = false;
                        mVar11119.f31174g = false;
                        mVar11119.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar111111 = (e) obj;
                    eVar111111.f30815X = i35;
                    eVar111111.f30816Y = i35;
                    eVar111111.f30824d.f31175h.d(i35);
                    eVar111111.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar111112 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar111110 = dVar4.f30824d;
                            kVar111110.f31172e.f31145j = false;
                            kVar111110.f31174g = false;
                            kVar111110.n();
                            m mVar111110 = dVar4.f30826e;
                            mVar111110.f31172e.f31145j = false;
                            mVar111110.f31174g = false;
                            mVar111110.m();
                        }
                        i35 = 0;
                        eVar111112.f();
                        eVar111112.f30818a = false;
                        k kVar111111 = eVar111112.f30824d;
                        kVar111111.f31172e.f31145j = false;
                        kVar111111.f31174g = false;
                        kVar111111.n();
                        m mVar111111 = eVar111112.f30826e;
                        mVar111111.f31172e.f31145j = false;
                        mVar111111.f31174g = false;
                        mVar111111.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar111113 = (e) obj;
                    eVar111113.f30815X = i35;
                    eVar111113.f30816Y = i35;
                    eVar111113.f30824d.f31175h.d(i35);
                    eVar111113.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                }
                if (zQ) {
                    if (mode == i36) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    if (mode2 == i36) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    eVar3.L(z17, z18);
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                i18 = 0;
                zQ = false;
            }
            if (zQ) {
            }
            i19 = eVar3.f30861C0;
            if (size > 0) {
                size3 = eVar3.f30889p0.size();
                zS = eVar3.S(64);
                fVar5 = eVar3.f30873t0;
                while (i32 < size3) {
                    dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                    if (!(dVar2 instanceof p170w.f)) {
                        dVar2.getClass();
                        if (zS) {
                        }
                        iH = dVar2.h(0);
                        int iH16 = dVar2.h(1);
                        if (iH == 3) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (!z15) {
                            if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        } else if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    }
                }
                constraintLayout = fVar5.f31548a;
                childCount = constraintLayout.getChildCount();
                while (i33 < childCount) {
                    constraintLayout.getChildAt(i33);
                }
                arrayList = constraintLayout.f8951H;
                size4 = arrayList.size();
                if (size4 > 0) {
                    while (i34 < size4) {
                        ((c) arrayList.get(i34)).getClass();
                    }
                }
            }
            uVar.V(eVar3);
            size2 = ((ArrayList) uVar.f27278H).size();
            i20 = iO2;
            i21 = i17;
            if (size > 0) {
                uVar.T(eVar3, 0, i20, i21);
            }
            if (size2 > 0) {
                iArr2 = eVar3.f30847o0;
                if (iArr2[0] == 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (iArr2[1] == 2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                int iMax110 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                while (i22 < size2) {
                }
                i23 = 2;
                i24 = 0;
                while (i24 < i23) {
                    i25 = 0;
                    z12 = false;
                    while (i25 < size2) {
                        dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                        if (!(dVar instanceof g)) {
                            i28 = i19;
                            i29 = size2;
                            z13 = z12;
                            fVar4 = fVar2;
                        } else {
                            iO3 = dVar.o();
                            i30 = dVar.i();
                            i29 = size2;
                            int i517 = dVar.f30817Z;
                            i28 = i19;
                            fVar4 = fVar2;
                            boolean zH13 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                            iO4 = dVar.o();
                            z14 = zH13;
                            i31 = dVar.i();
                            if (iO4 != iO3) {
                                dVar.K(iO4);
                                if (!z10) {
                                }
                                z14 = true;
                            }
                            if (i31 != i30) {
                                dVar.H(i31);
                                if (z11) {
                                    iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                }
                                z13 = true;
                            } else {
                                z13 = z14;
                            }
                            if (!dVar.f30796E) {
                            }
                        }
                        i25++;
                        size2 = i29;
                        fVar2 = fVar4;
                        z12 = z13;
                        i19 = i28;
                    }
                    i26 = i19;
                    i27 = size2;
                    fVar3 = fVar2;
                    if (z12) {
                        eVar3 = eVar;
                        i19 = i26;
                        break;
                    }
                    i24++;
                    eVar3 = eVar;
                    uVar.T(eVar3, i24, i20, i21);
                    fVar2 = fVar3;
                    i19 = i26;
                    i23 = 2;
                    size2 = i27;
                }
            }
            eVar3.f30861C0 = i19;
            d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
        }
        if (mode2 != 0) {
            if (mode2 != 1073741824) {
                i11 = 1;
            } else {
                iMin2 = Math.min(this.f8956M - i47, i46);
                i11 = 1;
            }
            iO = eVar.o();
            eVar2 = eVar3.f30871r0;
            i12 = iMin;
            if (i12 == iO) {
                eVar2.f31128b = true;
            } else {
                eVar2.f31128b = true;
            }
            eVar3.f30815X = 0;
            eVar3.f30816Y = 0;
            int i4112 = this.f8955L - i48;
            iArr = eVar3.f30794C;
            iArr[0] = i4112;
            iArr[1] = this.f8956M - i47;
            eVar3.f30819a0 = 0;
            eVar3.f30821b0 = 0;
            eVar3.I(i44);
            eVar3.K(i12);
            eVar3.J(i11);
            eVar3.H(iMin2);
            i13 = this.f8953J - i48;
            if (i13 < 0) {
                eVar3.f30819a0 = 0;
            } else {
                eVar3.f30819a0 = i13;
            }
            i14 = this.f8954K - i47;
            if (i14 < 0) {
                eVar3.f30821b0 = 0;
            } else {
                eVar3.f30821b0 = i14;
            }
            eVar3.f30876w0 = iMax6;
            eVar3.f30877x0 = iMax4;
            uVar = eVar3.f30870q0;
            uVar.getClass();
            fVar = eVar3.f30873t0;
            size = eVar3.f30889p0.size();
            iO2 = eVar.o();
            i15 = eVar.i();
            zB = i.b(i8, 128);
            if (zB) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (z7) {
                i42 = 0;
                while (true) {
                    if (i42 < size) {
                        dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                        iArr4 = dVar3.f30847o0;
                        if (iArr4[0] == 3) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        if (iArr4[1] == 3) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        if (z21) {
                            z23 = false;
                        } else {
                            z23 = false;
                        }
                        if (!dVar3.v()) {
                        }
                        i16 = 1073741824;
                        z7 = false;
                    } else {
                        i16 = 1073741824;
                    }
                }
            } else {
                i16 = 1073741824;
            }
            z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
            if (z8) {
                iMin3 = Math.min(iArr[0], i45);
                iMin4 = Math.min(iArr[1], i46);
                if (mode == 1073741824) {
                    eVar3.K(iMin3);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode2 == 1073741824) {
                    eVar3.H(iMin4);
                    eVar3.f30871r0.f31127a = true;
                }
                if (mode == 1073741824) {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar111114 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar111112 = dVar4.f30824d;
                            kVar111112.f31172e.f31145j = false;
                            kVar111112.f31174g = false;
                            kVar111112.n();
                            m mVar111112 = dVar4.f30826e;
                            mVar111112.f31172e.f31145j = false;
                            mVar111112.f31174g = false;
                            mVar111112.m();
                        }
                        i35 = 0;
                        eVar111114.f();
                        eVar111114.f30818a = false;
                        k kVar111113 = eVar111114.f30824d;
                        kVar111113.f31172e.f31145j = false;
                        kVar111113.f31174g = false;
                        kVar111113.n();
                        m mVar111113 = eVar111114.f30826e;
                        mVar111113.f31172e.f31145j = false;
                        mVar111113.f31174g = false;
                        mVar111113.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar111115 = (e) obj;
                    eVar111115.f30815X = i35;
                    eVar111115.f30816Y = i35;
                    eVar111115.f30824d.f31175h.d(i35);
                    eVar111115.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                } else {
                    z9 = z8;
                    fVar2 = fVar;
                    iO2 = iO2;
                    i17 = i15;
                    z16 = eVar2.f31127a;
                    obj = eVar2.f31129c;
                    if (z16) {
                        e eVar111116 = (e) obj;
                        while (r6.hasNext()) {
                            dVar4.f();
                            dVar4.f30818a = false;
                            k kVar111114 = dVar4.f30824d;
                            kVar111114.f31172e.f31145j = false;
                            kVar111114.f31174g = false;
                            kVar111114.n();
                            m mVar111114 = dVar4.f30826e;
                            mVar111114.f31172e.f31145j = false;
                            mVar111114.f31174g = false;
                            mVar111114.m();
                        }
                        i35 = 0;
                        eVar111116.f();
                        eVar111116.f30818a = false;
                        k kVar111115 = eVar111116.f30824d;
                        kVar111115.f31172e.f31145j = false;
                        kVar111115.f31174g = false;
                        kVar111115.n();
                        m mVar111115 = eVar111116.f30826e;
                        mVar111115.f31172e.f31145j = false;
                        mVar111115.f31174g = false;
                        mVar111115.m();
                        eVar2.d();
                    } else {
                        i35 = 0;
                    }
                    eVar2.c((e) eVar2.f31130d);
                    e eVar111117 = (e) obj;
                    eVar111117.f30815X = i35;
                    eVar111117.f30816Y = i35;
                    eVar111117.f30824d.f31175h.d(i35);
                    eVar111117.f30826e.f31175h.d(i35);
                    i36 = 1073741824;
                    if (mode == 1073741824) {
                        i37 = 1;
                        zQ2 = eVar3.Q(i35, zB) & true;
                        i18 = 1;
                    } else {
                        i37 = 1;
                        i18 = 0;
                        zQ2 = true;
                    }
                    if (mode2 == 1073741824) {
                        zQ = zQ2 & eVar3.Q(i37, zB);
                        i18++;
                    } else {
                        zQ = zQ2;
                    }
                }
                if (zQ) {
                    if (mode == i36) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    if (mode2 == i36) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    eVar3.L(z17, z18);
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                i18 = 0;
                zQ = false;
            }
            if (zQ) {
            }
            i19 = eVar3.f30861C0;
            if (size > 0) {
                size3 = eVar3.f30889p0.size();
                zS = eVar3.S(64);
                fVar5 = eVar3.f30873t0;
                while (i32 < size3) {
                    dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                    if (!(dVar2 instanceof p170w.f)) {
                        dVar2.getClass();
                        if (zS) {
                        }
                        iH = dVar2.h(0);
                        int iH17 = dVar2.h(1);
                        if (iH == 3) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        if (!z15) {
                            if (z15) {
                                uVar.H(0, dVar2, fVar5);
                            }
                        } else if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    }
                }
                constraintLayout = fVar5.f31548a;
                childCount = constraintLayout.getChildCount();
                while (i33 < childCount) {
                    constraintLayout.getChildAt(i33);
                }
                arrayList = constraintLayout.f8951H;
                size4 = arrayList.size();
                if (size4 > 0) {
                    while (i34 < size4) {
                        ((c) arrayList.get(i34)).getClass();
                    }
                }
            }
            uVar.V(eVar3);
            size2 = ((ArrayList) uVar.f27278H).size();
            i20 = iO2;
            i21 = i17;
            if (size > 0) {
                uVar.T(eVar3, 0, i20, i21);
            }
            if (size2 > 0) {
                iArr2 = eVar3.f30847o0;
                if (iArr2[0] == 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (iArr2[1] == 2) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                int iMax111 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
                iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
                while (i22 < size2) {
                }
                i23 = 2;
                i24 = 0;
                while (i24 < i23) {
                    i25 = 0;
                    z12 = false;
                    while (i25 < size2) {
                        dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                        if (!(dVar instanceof g)) {
                            i28 = i19;
                            i29 = size2;
                            z13 = z12;
                            fVar4 = fVar2;
                        } else {
                            iO3 = dVar.o();
                            i30 = dVar.i();
                            i29 = size2;
                            int i518 = dVar.f30817Z;
                            i28 = i19;
                            fVar4 = fVar2;
                            boolean zH14 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                            iO4 = dVar.o();
                            z14 = zH14;
                            i31 = dVar.i();
                            if (iO4 != iO3) {
                                dVar.K(iO4);
                                if (!z10) {
                                }
                                z14 = true;
                            }
                            if (i31 != i30) {
                                dVar.H(i31);
                                if (z11) {
                                    iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                                }
                                z13 = true;
                            } else {
                                z13 = z14;
                            }
                            if (!dVar.f30796E) {
                            }
                        }
                        i25++;
                        size2 = i29;
                        fVar2 = fVar4;
                        z12 = z13;
                        i19 = i28;
                    }
                    i26 = i19;
                    i27 = size2;
                    fVar3 = fVar2;
                    if (z12) {
                        eVar3 = eVar;
                        i19 = i26;
                        break;
                    }
                    i24++;
                    eVar3 = eVar;
                    uVar.T(eVar3, i24, i20, i21);
                    fVar2 = fVar3;
                    i19 = i26;
                    i23 = 2;
                    size2 = i27;
                }
            }
            eVar3.f30861C0 = i19;
            d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
        }
        if (childCount2 == 0) {
            iMax2 = Math.max(0, this.f8954K);
        } else {
            i11 = 2;
        }
        iMin2 = 0;
        iO = eVar.o();
        eVar2 = eVar3.f30871r0;
        i12 = iMin;
        if (i12 == iO) {
            eVar2.f31128b = true;
        } else {
            eVar2.f31128b = true;
        }
        eVar3.f30815X = 0;
        eVar3.f30816Y = 0;
        int i4113 = this.f8955L - i48;
        iArr = eVar3.f30794C;
        iArr[0] = i4113;
        iArr[1] = this.f8956M - i47;
        eVar3.f30819a0 = 0;
        eVar3.f30821b0 = 0;
        eVar3.I(i44);
        eVar3.K(i12);
        eVar3.J(i11);
        eVar3.H(iMin2);
        i13 = this.f8953J - i48;
        if (i13 < 0) {
            eVar3.f30819a0 = 0;
        } else {
            eVar3.f30819a0 = i13;
        }
        i14 = this.f8954K - i47;
        if (i14 < 0) {
            eVar3.f30821b0 = 0;
        } else {
            eVar3.f30821b0 = i14;
        }
        eVar3.f30876w0 = iMax6;
        eVar3.f30877x0 = iMax4;
        uVar = eVar3.f30870q0;
        uVar.getClass();
        fVar = eVar3.f30873t0;
        size = eVar3.f30889p0.size();
        iO2 = eVar.o();
        i15 = eVar.i();
        zB = i.b(i8, 128);
        if (zB) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (z7) {
            i42 = 0;
            while (true) {
                if (i42 < size) {
                    dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                    iArr4 = dVar3.f30847o0;
                    if (iArr4[0] == 3) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    if (iArr4[1] == 3) {
                        z22 = true;
                    } else {
                        z22 = false;
                    }
                    if (z21) {
                        z23 = false;
                    } else {
                        z23 = false;
                    }
                    if (!dVar3.v()) {
                    }
                    i16 = 1073741824;
                    z7 = false;
                } else {
                    i16 = 1073741824;
                }
            }
        } else {
            i16 = 1073741824;
        }
        z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
        if (z8) {
            iMin3 = Math.min(iArr[0], i45);
            iMin4 = Math.min(iArr[1], i46);
            if (mode == 1073741824) {
                eVar3.K(iMin3);
                eVar3.f30871r0.f31127a = true;
            }
            if (mode2 == 1073741824) {
                eVar3.H(iMin4);
                eVar3.f30871r0.f31127a = true;
            }
            if (mode == 1073741824) {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                z16 = eVar2.f31127a;
                obj = eVar2.f31129c;
                if (z16) {
                    e eVar111118 = (e) obj;
                    while (r6.hasNext()) {
                        dVar4.f();
                        dVar4.f30818a = false;
                        k kVar111116 = dVar4.f30824d;
                        kVar111116.f31172e.f31145j = false;
                        kVar111116.f31174g = false;
                        kVar111116.n();
                        m mVar111116 = dVar4.f30826e;
                        mVar111116.f31172e.f31145j = false;
                        mVar111116.f31174g = false;
                        mVar111116.m();
                    }
                    i35 = 0;
                    eVar111118.f();
                    eVar111118.f30818a = false;
                    k kVar111117 = eVar111118.f30824d;
                    kVar111117.f31172e.f31145j = false;
                    kVar111117.f31174g = false;
                    kVar111117.n();
                    m mVar111117 = eVar111118.f30826e;
                    mVar111117.f31172e.f31145j = false;
                    mVar111117.f31174g = false;
                    mVar111117.m();
                    eVar2.d();
                } else {
                    i35 = 0;
                }
                eVar2.c((e) eVar2.f31130d);
                e eVar111119 = (e) obj;
                eVar111119.f30815X = i35;
                eVar111119.f30816Y = i35;
                eVar111119.f30824d.f31175h.d(i35);
                eVar111119.f30826e.f31175h.d(i35);
                i36 = 1073741824;
                if (mode == 1073741824) {
                    i37 = 1;
                    zQ2 = eVar3.Q(i35, zB) & true;
                    i18 = 1;
                } else {
                    i37 = 1;
                    i18 = 0;
                    zQ2 = true;
                }
                if (mode2 == 1073741824) {
                    zQ = zQ2 & eVar3.Q(i37, zB);
                    i18++;
                } else {
                    zQ = zQ2;
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                z16 = eVar2.f31127a;
                obj = eVar2.f31129c;
                if (z16) {
                    e eVar1111110 = (e) obj;
                    while (r6.hasNext()) {
                        dVar4.f();
                        dVar4.f30818a = false;
                        k kVar111118 = dVar4.f30824d;
                        kVar111118.f31172e.f31145j = false;
                        kVar111118.f31174g = false;
                        kVar111118.n();
                        m mVar111118 = dVar4.f30826e;
                        mVar111118.f31172e.f31145j = false;
                        mVar111118.f31174g = false;
                        mVar111118.m();
                    }
                    i35 = 0;
                    eVar1111110.f();
                    eVar1111110.f30818a = false;
                    k kVar111119 = eVar1111110.f30824d;
                    kVar111119.f31172e.f31145j = false;
                    kVar111119.f31174g = false;
                    kVar111119.n();
                    m mVar111119 = eVar1111110.f30826e;
                    mVar111119.f31172e.f31145j = false;
                    mVar111119.f31174g = false;
                    mVar111119.m();
                    eVar2.d();
                } else {
                    i35 = 0;
                }
                eVar2.c((e) eVar2.f31130d);
                e eVar1111111 = (e) obj;
                eVar1111111.f30815X = i35;
                eVar1111111.f30816Y = i35;
                eVar1111111.f30824d.f31175h.d(i35);
                eVar1111111.f30826e.f31175h.d(i35);
                i36 = 1073741824;
                if (mode == 1073741824) {
                    i37 = 1;
                    zQ2 = eVar3.Q(i35, zB) & true;
                    i18 = 1;
                } else {
                    i37 = 1;
                    i18 = 0;
                    zQ2 = true;
                }
                if (mode2 == 1073741824) {
                    zQ = zQ2 & eVar3.Q(i37, zB);
                    i18++;
                } else {
                    zQ = zQ2;
                }
            }
            if (zQ) {
                if (mode == i36) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                if (mode2 == i36) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                eVar3.L(z17, z18);
            }
        } else {
            z9 = z8;
            fVar2 = fVar;
            iO2 = iO2;
            i17 = i15;
            i18 = 0;
            zQ = false;
        }
        if (zQ) {
        }
        i19 = eVar3.f30861C0;
        if (size > 0) {
            size3 = eVar3.f30889p0.size();
            zS = eVar3.S(64);
            fVar5 = eVar3.f30873t0;
            while (i32 < size3) {
                dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                if (!(dVar2 instanceof p170w.f)) {
                    dVar2.getClass();
                    if (zS) {
                    }
                    iH = dVar2.h(0);
                    int iH18 = dVar2.h(1);
                    if (iH == 3) {
                        z15 = false;
                    } else {
                        z15 = false;
                    }
                    if (!z15) {
                        if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    } else if (z15) {
                        uVar.H(0, dVar2, fVar5);
                    }
                }
            }
            constraintLayout = fVar5.f31548a;
            childCount = constraintLayout.getChildCount();
            while (i33 < childCount) {
                constraintLayout.getChildAt(i33);
            }
            arrayList = constraintLayout.f8951H;
            size4 = arrayList.size();
            if (size4 > 0) {
                while (i34 < size4) {
                    ((c) arrayList.get(i34)).getClass();
                }
            }
        }
        uVar.V(eVar3);
        size2 = ((ArrayList) uVar.f27278H).size();
        i20 = iO2;
        i21 = i17;
        if (size > 0) {
            uVar.T(eVar3, 0, i20, i21);
        }
        if (size2 > 0) {
            iArr2 = eVar3.f30847o0;
            if (iArr2[0] == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (iArr2[1] == 2) {
                z11 = true;
            } else {
                z11 = false;
            }
            int iMax112 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
            iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
            while (i22 < size2) {
            }
            i23 = 2;
            i24 = 0;
            while (i24 < i23) {
                i25 = 0;
                z12 = false;
                while (i25 < size2) {
                    dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                    if (!(dVar instanceof g)) {
                        i28 = i19;
                        i29 = size2;
                        z13 = z12;
                        fVar4 = fVar2;
                    } else {
                        iO3 = dVar.o();
                        i30 = dVar.i();
                        i29 = size2;
                        int i519 = dVar.f30817Z;
                        i28 = i19;
                        fVar4 = fVar2;
                        boolean zH15 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                        iO4 = dVar.o();
                        z14 = zH15;
                        i31 = dVar.i();
                        if (iO4 != iO3) {
                            dVar.K(iO4);
                            if (!z10) {
                            }
                            z14 = true;
                        }
                        if (i31 != i30) {
                            dVar.H(i31);
                            if (z11) {
                                iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                            }
                            z13 = true;
                        } else {
                            z13 = z14;
                        }
                        if (!dVar.f30796E) {
                        }
                    }
                    i25++;
                    size2 = i29;
                    fVar2 = fVar4;
                    z12 = z13;
                    i19 = i28;
                }
                i26 = i19;
                i27 = size2;
                fVar3 = fVar2;
                if (z12) {
                    eVar3 = eVar;
                    i19 = i26;
                    break;
                }
                i24++;
                eVar3 = eVar;
                uVar.T(eVar3, i24, i20, i21);
                fVar2 = fVar3;
                i19 = i26;
                i23 = 2;
                size2 = i27;
            }
        }
        eVar3.f30861C0 = i19;
        d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
        iMin2 = iMax2;
        i11 = 2;
        iO = eVar.o();
        eVar2 = eVar3.f30871r0;
        i12 = iMin;
        if (i12 == iO) {
            eVar2.f31128b = true;
        } else {
            eVar2.f31128b = true;
        }
        eVar3.f30815X = 0;
        eVar3.f30816Y = 0;
        int i4114 = this.f8955L - i48;
        iArr = eVar3.f30794C;
        iArr[0] = i4114;
        iArr[1] = this.f8956M - i47;
        eVar3.f30819a0 = 0;
        eVar3.f30821b0 = 0;
        eVar3.I(i44);
        eVar3.K(i12);
        eVar3.J(i11);
        eVar3.H(iMin2);
        i13 = this.f8953J - i48;
        if (i13 < 0) {
            eVar3.f30819a0 = 0;
        } else {
            eVar3.f30819a0 = i13;
        }
        i14 = this.f8954K - i47;
        if (i14 < 0) {
            eVar3.f30821b0 = 0;
        } else {
            eVar3.f30821b0 = i14;
        }
        eVar3.f30876w0 = iMax6;
        eVar3.f30877x0 = iMax4;
        uVar = eVar3.f30870q0;
        uVar.getClass();
        fVar = eVar3.f30873t0;
        size = eVar3.f30889p0.size();
        iO2 = eVar.o();
        i15 = eVar.i();
        zB = i.b(i8, 128);
        if (zB) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (z7) {
            i42 = 0;
            while (true) {
                if (i42 < size) {
                    dVar3 = (p170w.d) eVar3.f30889p0.get(i42);
                    iArr4 = dVar3.f30847o0;
                    if (iArr4[0] == 3) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    if (iArr4[1] == 3) {
                        z22 = true;
                    } else {
                        z22 = false;
                    }
                    if (z21) {
                        z23 = false;
                    } else {
                        z23 = false;
                    }
                    if (!dVar3.v()) {
                    }
                    i16 = 1073741824;
                    z7 = false;
                } else {
                    i16 = 1073741824;
                }
            }
        } else {
            i16 = 1073741824;
        }
        z8 = ((mode != i16 && mode2 == i16) || zB) & z7;
        if (z8) {
            iMin3 = Math.min(iArr[0], i45);
            iMin4 = Math.min(iArr[1], i46);
            if (mode == 1073741824) {
                eVar3.K(iMin3);
                eVar3.f30871r0.f31127a = true;
            }
            if (mode2 == 1073741824) {
                eVar3.H(iMin4);
                eVar3.f30871r0.f31127a = true;
            }
            if (mode == 1073741824) {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                z16 = eVar2.f31127a;
                obj = eVar2.f31129c;
                if (z16) {
                    e eVar1111112 = (e) obj;
                    while (r6.hasNext()) {
                        dVar4.f();
                        dVar4.f30818a = false;
                        k kVar1111110 = dVar4.f30824d;
                        kVar1111110.f31172e.f31145j = false;
                        kVar1111110.f31174g = false;
                        kVar1111110.n();
                        m mVar1111110 = dVar4.f30826e;
                        mVar1111110.f31172e.f31145j = false;
                        mVar1111110.f31174g = false;
                        mVar1111110.m();
                    }
                    i35 = 0;
                    eVar1111112.f();
                    eVar1111112.f30818a = false;
                    k kVar1111111 = eVar1111112.f30824d;
                    kVar1111111.f31172e.f31145j = false;
                    kVar1111111.f31174g = false;
                    kVar1111111.n();
                    m mVar1111111 = eVar1111112.f30826e;
                    mVar1111111.f31172e.f31145j = false;
                    mVar1111111.f31174g = false;
                    mVar1111111.m();
                    eVar2.d();
                } else {
                    i35 = 0;
                }
                eVar2.c((e) eVar2.f31130d);
                e eVar1111113 = (e) obj;
                eVar1111113.f30815X = i35;
                eVar1111113.f30816Y = i35;
                eVar1111113.f30824d.f31175h.d(i35);
                eVar1111113.f30826e.f31175h.d(i35);
                i36 = 1073741824;
                if (mode == 1073741824) {
                    i37 = 1;
                    zQ2 = eVar3.Q(i35, zB) & true;
                    i18 = 1;
                } else {
                    i37 = 1;
                    i18 = 0;
                    zQ2 = true;
                }
                if (mode2 == 1073741824) {
                    zQ = zQ2 & eVar3.Q(i37, zB);
                    i18++;
                } else {
                    zQ = zQ2;
                }
            } else {
                z9 = z8;
                fVar2 = fVar;
                iO2 = iO2;
                i17 = i15;
                z16 = eVar2.f31127a;
                obj = eVar2.f31129c;
                if (z16) {
                    e eVar1111114 = (e) obj;
                    while (r6.hasNext()) {
                        dVar4.f();
                        dVar4.f30818a = false;
                        k kVar1111112 = dVar4.f30824d;
                        kVar1111112.f31172e.f31145j = false;
                        kVar1111112.f31174g = false;
                        kVar1111112.n();
                        m mVar1111112 = dVar4.f30826e;
                        mVar1111112.f31172e.f31145j = false;
                        mVar1111112.f31174g = false;
                        mVar1111112.m();
                    }
                    i35 = 0;
                    eVar1111114.f();
                    eVar1111114.f30818a = false;
                    k kVar1111113 = eVar1111114.f30824d;
                    kVar1111113.f31172e.f31145j = false;
                    kVar1111113.f31174g = false;
                    kVar1111113.n();
                    m mVar1111113 = eVar1111114.f30826e;
                    mVar1111113.f31172e.f31145j = false;
                    mVar1111113.f31174g = false;
                    mVar1111113.m();
                    eVar2.d();
                } else {
                    i35 = 0;
                }
                eVar2.c((e) eVar2.f31130d);
                e eVar1111115 = (e) obj;
                eVar1111115.f30815X = i35;
                eVar1111115.f30816Y = i35;
                eVar1111115.f30824d.f31175h.d(i35);
                eVar1111115.f30826e.f31175h.d(i35);
                i36 = 1073741824;
                if (mode == 1073741824) {
                    i37 = 1;
                    zQ2 = eVar3.Q(i35, zB) & true;
                    i18 = 1;
                } else {
                    i37 = 1;
                    i18 = 0;
                    zQ2 = true;
                }
                if (mode2 == 1073741824) {
                    zQ = zQ2 & eVar3.Q(i37, zB);
                    i18++;
                } else {
                    zQ = zQ2;
                }
            }
            if (zQ) {
                if (mode == i36) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                if (mode2 == i36) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                eVar3.L(z17, z18);
            }
        } else {
            z9 = z8;
            fVar2 = fVar;
            iO2 = iO2;
            i17 = i15;
            i18 = 0;
            zQ = false;
        }
        if (zQ) {
        }
        i19 = eVar3.f30861C0;
        if (size > 0) {
            size3 = eVar3.f30889p0.size();
            zS = eVar3.S(64);
            fVar5 = eVar3.f30873t0;
            while (i32 < size3) {
                dVar2 = (p170w.d) eVar3.f30889p0.get(i32);
                if (!(dVar2 instanceof p170w.f)) {
                    dVar2.getClass();
                    if (zS) {
                    }
                    iH = dVar2.h(0);
                    int iH19 = dVar2.h(1);
                    if (iH == 3) {
                        z15 = false;
                    } else {
                        z15 = false;
                    }
                    if (!z15) {
                        if (z15) {
                            uVar.H(0, dVar2, fVar5);
                        }
                    } else if (z15) {
                        uVar.H(0, dVar2, fVar5);
                    }
                }
            }
            constraintLayout = fVar5.f31548a;
            childCount = constraintLayout.getChildCount();
            while (i33 < childCount) {
                constraintLayout.getChildAt(i33);
            }
            arrayList = constraintLayout.f8951H;
            size4 = arrayList.size();
            if (size4 > 0) {
                while (i34 < size4) {
                    ((c) arrayList.get(i34)).getClass();
                }
            }
        }
        uVar.V(eVar3);
        size2 = ((ArrayList) uVar.f27278H).size();
        i20 = iO2;
        i21 = i17;
        if (size > 0) {
            uVar.T(eVar3, 0, i20, i21);
        }
        if (size2 > 0) {
            iArr2 = eVar3.f30847o0;
            if (iArr2[0] == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (iArr2[1] == 2) {
                z11 = true;
            } else {
                z11 = false;
            }
            int iMax113 = Math.max(eVar.o(), ((e) uVar.f27280J).f30819a0);
            iMax3 = Math.max(eVar.i(), ((e) uVar.f27280J).f30821b0);
            while (i22 < size2) {
            }
            i23 = 2;
            i24 = 0;
            while (i24 < i23) {
                i25 = 0;
                z12 = false;
                while (i25 < size2) {
                    dVar = (p170w.d) ((ArrayList) uVar.f27278H).get(i25);
                    if (!(dVar instanceof g)) {
                        i28 = i19;
                        i29 = size2;
                        z13 = z12;
                        fVar4 = fVar2;
                    } else {
                        iO3 = dVar.o();
                        i30 = dVar.i();
                        i29 = size2;
                        int i5110 = dVar.f30817Z;
                        i28 = i19;
                        fVar4 = fVar2;
                        boolean zH16 = uVar.H(i24 == 1 ? 2 : 1, dVar, fVar4) | z12;
                        iO4 = dVar.o();
                        z14 = zH16;
                        i31 = dVar.i();
                        if (iO4 != iO3) {
                            dVar.K(iO4);
                            if (!z10) {
                            }
                            z14 = true;
                        }
                        if (i31 != i30) {
                            dVar.H(i31);
                            if (z11) {
                                iMax3 = Math.max(iMax3, dVar.g(5).d() + dVar.q() + dVar.f30812U);
                            }
                            z13 = true;
                        } else {
                            z13 = z14;
                        }
                        if (!dVar.f30796E) {
                        }
                    }
                    i25++;
                    size2 = i29;
                    fVar2 = fVar4;
                    z12 = z13;
                    i19 = i28;
                }
                i26 = i19;
                i27 = size2;
                fVar3 = fVar2;
                if (z12) {
                    eVar3 = eVar;
                    i19 = i26;
                    break;
                }
                i24++;
                eVar3 = eVar;
                uVar.T(eVar3, i24, i20, i21);
                fVar2 = fVar3;
                i19 = i26;
                i23 = 2;
                size2 = i27;
            }
        }
        eVar3.f30861C0 = i19;
        d.f30335q = eVar3.S(IMediaList.Event.ItemAdded);
    }

    public final void k(p170w.d dVar, p193z.e eVar, SparseArray sparseArray, int i8, int i9) {
        View view = (View) this.f8950G.get(i8);
        p170w.d dVar2 = (p170w.d) sparseArray.get(i8);
        if (dVar2 == null || view == null || !(view.getLayoutParams() instanceof p193z.e)) {
            return;
        }
        eVar.f31511c0 = true;
        if (i9 == 6) {
            p193z.e eVar2 = (p193z.e) view.getLayoutParams();
            eVar2.f31511c0 = true;
            eVar2.f31537p0.f30796E = true;
        }
        dVar.g(6).a(dVar2.g(i9), eVar.f31483D, eVar.f31482C);
        dVar.f30796E = true;
        dVar.g(3).g();
        dVar.g(5).g();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            p193z.e eVar = (p193z.e) childAt.getLayoutParams();
            p170w.d dVar = eVar.f31537p0;
            if (childAt.getVisibility() != 8 || eVar.f31513d0 || eVar.f31515e0 || zIsInEditMode) {
                int iP = dVar.p();
                int iQ = dVar.q();
                childAt.layout(iP, iQ, dVar.o() + iP, dVar.i() + iQ);
            }
        }
        ArrayList arrayList = this.f8951H;
        int size = arrayList.size();
        if (size > 0) {
            for (int i13 = 0; i13 < size; i13++) {
                ((c) arrayList.get(i13)).getClass();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:225:0x05f4  */
    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        e eVar;
        boolean z7;
        boolean z8;
        SparseArray sparseArray;
        boolean z9;
        int i10;
        SparseArray sparseArray2;
        int i11;
        int i12;
        ViewGroup viewGroup;
        int i13;
        SparseArray sparseArray3;
        o oVar;
        int i14;
        e eVar2;
        boolean z10;
        boolean z11;
        int i15;
        int i16;
        int i17;
        String resourceEntryName;
        p170w.d dVar;
        ConstraintLayout constraintLayout = this;
        SparseArray sparseArray4 = constraintLayout.f8950G;
        boolean z12 = constraintLayout.f8957N;
        constraintLayout.f8957N = z12;
        if (!z12) {
            int childCount = getChildCount();
            for (int i18 = 0; i18 < childCount; i18++) {
                if (constraintLayout.getChildAt(i18).isLayoutRequested()) {
                    constraintLayout.f8957N = true;
                    break;
                }
            }
        }
        boolean z13 = (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
        e eVar3 = constraintLayout.f8952I;
        eVar3.f30874u0 = z13;
        if (constraintLayout.f8957N) {
            constraintLayout.f8957N = false;
            int childCount2 = getChildCount();
            int i19 = 0;
            while (true) {
                if (i19 >= childCount2) {
                    z7 = false;
                    break;
                } else {
                    if (constraintLayout.getChildAt(i19).isLayoutRequested()) {
                        z7 = true;
                        break;
                    }
                    i19++;
                }
            }
            if (z7) {
                boolean zIsInEditMode = isInEditMode();
                int childCount3 = getChildCount();
                for (int i20 = 0; i20 < childCount3; i20++) {
                    p170w.d dVarI = constraintLayout.i(constraintLayout.getChildAt(i20));
                    if (dVarI != null) {
                        dVarI.A();
                    }
                }
                if (zIsInEditMode) {
                    for (int i21 = 0; i21 < childCount3; i21++) {
                        View childAt = constraintLayout.getChildAt(i21);
                        try {
                            String resourceName = getResources().getResourceName(childAt.getId());
                            Integer numValueOf = Integer.valueOf(childAt.getId());
                            if (resourceName instanceof String) {
                                if (constraintLayout.f8962S == null) {
                                    constraintLayout.f8962S = new HashMap();
                                }
                                int iIndexOf = resourceName.indexOf(MqttTopic.TOPIC_LEVEL_SEPARATOR);
                                constraintLayout.f8962S.put(iIndexOf != -1 ? resourceName.substring(iIndexOf + 1) : resourceName, numValueOf);
                            }
                            int iIndexOf2 = resourceName.indexOf(47);
                            if (iIndexOf2 != -1) {
                                resourceName = resourceName.substring(iIndexOf2 + 1);
                            }
                            int id = childAt.getId();
                            if (id != 0) {
                                View viewFindViewById = (View) sparseArray4.get(id);
                                if (viewFindViewById == null && (viewFindViewById = constraintLayout.findViewById(id)) != null && viewFindViewById != constraintLayout && viewFindViewById.getParent() == constraintLayout) {
                                    constraintLayout.onViewAdded(viewFindViewById);
                                }
                                dVar = viewFindViewById == constraintLayout ? eVar3 : viewFindViewById == null ? null : ((p193z.e) viewFindViewById.getLayoutParams()).f31537p0;
                            }
                            dVar.f30831g0 = resourceName;
                        } catch (Resources.NotFoundException unused) {
                        }
                    }
                }
                if (constraintLayout.f8961R != -1) {
                    for (int i22 = 0; i22 < childCount3; i22++) {
                        constraintLayout.getChildAt(i22).getId();
                    }
                }
                o oVar2 = constraintLayout.f8959P;
                if (oVar2 != null) {
                    int childCount4 = getChildCount();
                    HashMap map = oVar2.f31686c;
                    HashSet<Integer> hashSet = new HashSet(map.keySet());
                    int i23 = 0;
                    while (i23 < childCount4) {
                        View childAt2 = constraintLayout.getChildAt(i23);
                        int id2 = childAt2.getId();
                        if (map.containsKey(Integer.valueOf(id2))) {
                            if (oVar2.f31685b) {
                                i13 = -1;
                                if (id2 == -1) {
                                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                                }
                            } else {
                                i13 = -1;
                            }
                            if (id2 != i13) {
                                if (map.containsKey(Integer.valueOf(id2))) {
                                    hashSet.remove(Integer.valueOf(id2));
                                    j jVar = (j) map.get(Integer.valueOf(id2));
                                    if (jVar != null) {
                                        if (childAt2 instanceof a) {
                                            p193z.k kVar = jVar.f31582d;
                                            oVar = oVar2;
                                            kVar.f31627h0 = 1;
                                            a aVar = (a) childAt2;
                                            aVar.setId(id2);
                                            aVar.setType(kVar.f31623f0);
                                            aVar.setMargin(kVar.f31625g0);
                                            aVar.setAllowsGoneWidget(kVar.f31639n0);
                                            int[] iArr = kVar.f31629i0;
                                            if (iArr != null) {
                                                aVar.setReferencedIds(iArr);
                                            } else {
                                                String str = kVar.f31631j0;
                                                if (str != null) {
                                                    int[] iArrB = o.b(aVar, str);
                                                    kVar.f31629i0 = iArrB;
                                                    aVar.setReferencedIds(iArrB);
                                                }
                                            }
                                        } else {
                                            oVar = oVar2;
                                        }
                                        p193z.e eVar4 = (p193z.e) childAt2.getLayoutParams();
                                        eVar4.a();
                                        jVar.a(eVar4);
                                        HashMap map2 = jVar.f31584f;
                                        z10 = z7;
                                        z11 = zIsInEditMode;
                                        i15 = childCount3;
                                        Class<?> cls = childAt2.getClass();
                                        for (String str2 : map2.keySet()) {
                                            SparseArray sparseArray5 = sparseArray4;
                                            p193z.b bVar = (p193z.b) map2.get(str2);
                                            HashMap map3 = map2;
                                            String strC = !bVar.f31465a ? p148t.a.c("set", str2) : str2;
                                            e eVar5 = eVar3;
                                            try {
                                                switch (p156u.h.b(bVar.f31466b)) {
                                                    case 0:
                                                        i17 = childCount4;
                                                        cls.getMethod(strC, Integer.TYPE).invoke(childAt2, Integer.valueOf(bVar.f31467c));
                                                        break;
                                                    case 1:
                                                        i17 = childCount4;
                                                        cls.getMethod(strC, Float.TYPE).invoke(childAt2, Float.valueOf(bVar.f31468d));
                                                        break;
                                                    case 2:
                                                        i17 = childCount4;
                                                        cls.getMethod(strC, Integer.TYPE).invoke(childAt2, Integer.valueOf(bVar.f31471g));
                                                        break;
                                                    case 3:
                                                        i17 = childCount4;
                                                        Method method = cls.getMethod(strC, Drawable.class);
                                                        ColorDrawable colorDrawable = new ColorDrawable();
                                                        colorDrawable.setColor(bVar.f31471g);
                                                        method.invoke(childAt2, colorDrawable);
                                                        break;
                                                    case 4:
                                                        i17 = childCount4;
                                                        cls.getMethod(strC, CharSequence.class).invoke(childAt2, bVar.f31469e);
                                                        break;
                                                    case 5:
                                                        i17 = childCount4;
                                                        cls.getMethod(strC, Boolean.TYPE).invoke(childAt2, Boolean.valueOf(bVar.f31470f));
                                                        break;
                                                    case 6:
                                                        i17 = childCount4;
                                                        cls.getMethod(strC, Float.TYPE).invoke(childAt2, Float.valueOf(bVar.f31468d));
                                                        break;
                                                    case 7:
                                                        i17 = childCount4;
                                                        try {
                                                            cls.getMethod(strC, Integer.TYPE).invoke(childAt2, Integer.valueOf(bVar.f31467c));
                                                        } catch (IllegalAccessException e8) {
                                                            e = e8;
                                                            StringBuilder sbP = U2.p(" Custom Attribute \"", str2, "\" not found on ");
                                                            sbP.append(cls.getName());
                                                            Log.e("TransitionLayout", sbP.toString(), e);
                                                        } catch (NoSuchMethodException e9) {
                                                            e = e9;
                                                            Log.e("TransitionLayout", cls.getName() + " must have a method " + strC, e);
                                                        } catch (InvocationTargetException e10) {
                                                            e = e10;
                                                            StringBuilder sbP2 = U2.p(" Custom Attribute \"", str2, "\" not found on ");
                                                            sbP2.append(cls.getName());
                                                            Log.e("TransitionLayout", sbP2.toString(), e);
                                                        }
                                                        break;
                                                    default:
                                                        i17 = childCount4;
                                                        break;
                                                }
                                            } catch (IllegalAccessException e11) {
                                                e = e11;
                                                i17 = childCount4;
                                            } catch (NoSuchMethodException e12) {
                                                e = e12;
                                                i17 = childCount4;
                                            } catch (InvocationTargetException e13) {
                                                e = e13;
                                                i17 = childCount4;
                                            }
                                            sparseArray4 = sparseArray5;
                                            map2 = map3;
                                            eVar3 = eVar5;
                                            childCount4 = i17;
                                        }
                                        sparseArray3 = sparseArray4;
                                        i14 = childCount4;
                                        eVar2 = eVar3;
                                        childAt2.setLayoutParams(eVar4);
                                        p193z.m mVar = jVar.f31580b;
                                        if (mVar.f31664b == 0) {
                                            childAt2.setVisibility(mVar.f31663a);
                                        }
                                        childAt2.setAlpha(mVar.f31665c);
                                        n nVar = jVar.f31583e;
                                        childAt2.setRotation(nVar.f31668a);
                                        childAt2.setRotationX(nVar.f31669b);
                                        childAt2.setRotationY(nVar.f31670c);
                                        childAt2.setScaleX(nVar.f31671d);
                                        childAt2.setScaleY(nVar.f31672e);
                                        if (nVar.f31675h != -1) {
                                            View viewFindViewById2 = ((View) childAt2.getParent()).findViewById(nVar.f31675h);
                                            if (viewFindViewById2 != null) {
                                                float bottom = (viewFindViewById2.getBottom() + viewFindViewById2.getTop()) / 2.0f;
                                                float right = (viewFindViewById2.getRight() + viewFindViewById2.getLeft()) / 2.0f;
                                                if (childAt2.getRight() - childAt2.getLeft() > 0 && childAt2.getBottom() - childAt2.getTop() > 0) {
                                                    float left = right - childAt2.getLeft();
                                                    float top = bottom - childAt2.getTop();
                                                    childAt2.setPivotX(left);
                                                    childAt2.setPivotY(top);
                                                }
                                            }
                                        } else {
                                            if (!Float.isNaN(nVar.f31673f)) {
                                                childAt2.setPivotX(nVar.f31673f);
                                            }
                                            if (!Float.isNaN(nVar.f31674g)) {
                                                childAt2.setPivotY(nVar.f31674g);
                                            }
                                        }
                                        childAt2.setTranslationX(nVar.f31676i);
                                        childAt2.setTranslationY(nVar.f31677j);
                                        childAt2.setTranslationZ(nVar.f31678k);
                                        if (nVar.f31679l) {
                                            childAt2.setElevation(nVar.f31680m);
                                        }
                                    }
                                } else {
                                    sparseArray3 = sparseArray4;
                                    oVar = oVar2;
                                    i14 = childCount4;
                                    eVar2 = eVar3;
                                    z10 = z7;
                                    z11 = zIsInEditMode;
                                    i15 = childCount3;
                                    Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id2);
                                }
                                i16 = 1;
                            }
                            i23 += i16;
                            constraintLayout = this;
                            oVar2 = oVar;
                            z7 = z10;
                            zIsInEditMode = z11;
                            childCount3 = i15;
                            sparseArray4 = sparseArray3;
                            eVar3 = eVar2;
                            childCount4 = i14;
                        } else {
                            StringBuilder sb = new StringBuilder("id unknown ");
                            try {
                                resourceEntryName = childAt2.getContext().getResources().getResourceEntryName(childAt2.getId());
                            } catch (Exception unused2) {
                                resourceEntryName = "UNKNOWN";
                            }
                            sb.append(resourceEntryName);
                            Log.w("ConstraintSet", sb.toString());
                        }
                        sparseArray3 = sparseArray4;
                        oVar = oVar2;
                        i14 = childCount4;
                        eVar2 = eVar3;
                        z10 = z7;
                        z11 = zIsInEditMode;
                        i15 = childCount3;
                        i16 = 1;
                        i23 += i16;
                        constraintLayout = this;
                        oVar2 = oVar;
                        z7 = z10;
                        zIsInEditMode = z11;
                        childCount3 = i15;
                        sparseArray4 = sparseArray3;
                        eVar3 = eVar2;
                        childCount4 = i14;
                    }
                    sparseArray = sparseArray4;
                    int i24 = childCount4;
                    e eVar6 = eVar3;
                    z8 = z7;
                    z9 = zIsInEditMode;
                    i10 = childCount3;
                    for (Integer num : hashSet) {
                        j jVar2 = (j) map.get(num);
                        if (jVar2 != null) {
                            p193z.k kVar2 = jVar2.f31582d;
                            if (kVar2.f31627h0 == 1) {
                                Context context = getContext();
                                a aVar2 = new a(context);
                                aVar2.f31472G = new int[32];
                                aVar2.f31478M = new HashMap();
                                aVar2.f31474I = context;
                                p170w.a aVar3 = new p170w.a();
                                aVar3.f30886p0 = new p170w.d[4];
                                aVar3.f30887q0 = 0;
                                aVar3.f30762r0 = 0;
                                aVar3.f30763s0 = true;
                                aVar3.f30764t0 = 0;
                                aVar3.f30765u0 = false;
                                aVar2.f31464P = aVar3;
                                aVar2.f31475J = aVar3;
                                aVar2.e();
                                aVar2.setVisibility(8);
                                aVar2.setId(num.intValue());
                                int[] iArr2 = kVar2.f31629i0;
                                if (iArr2 != null) {
                                    aVar2.setReferencedIds(iArr2);
                                } else {
                                    String str3 = kVar2.f31631j0;
                                    if (str3 != null) {
                                        int[] iArrB2 = o.b(aVar2, str3);
                                        kVar2.f31629i0 = iArrB2;
                                        aVar2.setReferencedIds(iArrB2);
                                    }
                                }
                                aVar2.setType(kVar2.f31623f0);
                                aVar2.setMargin(kVar2.f31625g0);
                                p193z.e eVarH = h();
                                aVar2.e();
                                jVar2.a(eVarH);
                                viewGroup = this;
                                viewGroup.addView(aVar2, eVarH);
                            } else {
                                viewGroup = this;
                            }
                            if (kVar2.f31612a) {
                                Guideline guideline = new Guideline(getContext());
                                guideline.setId(num.intValue());
                                p193z.e eVarH2 = h();
                                jVar2.a(eVarH2);
                                viewGroup.addView(guideline, eVarH2);
                            }
                        }
                    }
                    constraintLayout = this;
                    for (int i25 = 0; i25 < i24; i25++) {
                        View childAt3 = constraintLayout.getChildAt(i25);
                        if (childAt3 instanceof c) {
                            ((c) childAt3).getClass();
                        }
                    }
                    eVar = eVar6;
                } else {
                    sparseArray = sparseArray4;
                    z8 = z7;
                    z9 = zIsInEditMode;
                    i10 = childCount3;
                    eVar = eVar3;
                }
                eVar.f30889p0.clear();
                ArrayList arrayList = constraintLayout.f8951H;
                int size = arrayList.size();
                if (size > 0) {
                    int i26 = 0;
                    while (i26 < size) {
                        c cVar = (c) arrayList.get(i26);
                        if (cVar.isInEditMode()) {
                            cVar.setIds(cVar.f31476K);
                        }
                        p170w.a aVar4 = cVar.f31475J;
                        if (aVar4 == null) {
                            sparseArray2 = sparseArray;
                            i11 = 1;
                        } else {
                            aVar4.f30887q0 = 0;
                            Arrays.fill(aVar4.f30886p0, (Object) null);
                            int i27 = 0;
                            while (i27 < cVar.f31473H) {
                                int i28 = cVar.f31472G[i27];
                                SparseArray sparseArray6 = sparseArray;
                                View view = (View) sparseArray6.get(i28);
                                if (view == null) {
                                    HashMap map4 = cVar.f31478M;
                                    String str4 = (String) map4.get(Integer.valueOf(i28));
                                    int iD = cVar.d(constraintLayout, str4);
                                    if (iD != 0) {
                                        cVar.f31472G[i27] = iD;
                                        map4.put(Integer.valueOf(iD), str4);
                                        view = (View) sparseArray6.get(iD);
                                    }
                                }
                                if (view != null) {
                                    p170w.a aVar5 = cVar.f31475J;
                                    p170w.d dVarI2 = constraintLayout.i(view);
                                    aVar5.getClass();
                                    if (dVarI2 == aVar5 || dVarI2 == null) {
                                        i12 = 1;
                                    } else {
                                        int i29 = aVar5.f30887q0 + 1;
                                        p170w.d[] dVarArr = aVar5.f30886p0;
                                        if (i29 > dVarArr.length) {
                                            aVar5.f30886p0 = (p170w.d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
                                        }
                                        p170w.d[] dVarArr2 = aVar5.f30886p0;
                                        int i30 = aVar5.f30887q0;
                                        dVarArr2[i30] = dVarI2;
                                        i12 = 1;
                                        aVar5.f30887q0 = i30 + 1;
                                    }
                                } else {
                                    i12 = 1;
                                }
                                i27 += i12;
                                sparseArray = sparseArray6;
                            }
                            sparseArray2 = sparseArray;
                            i11 = 1;
                            cVar.f31475J.getClass();
                        }
                        i26 += i11;
                        sparseArray = sparseArray2;
                    }
                }
                int i31 = i10;
                for (int i32 = 0; i32 < i31; i32++) {
                    constraintLayout.getChildAt(i32);
                }
                SparseArray sparseArray7 = constraintLayout.f8963T;
                sparseArray7.clear();
                sparseArray7.put(0, eVar);
                sparseArray7.put(getId(), eVar);
                for (int i33 = 0; i33 < i31; i33++) {
                    View childAt4 = constraintLayout.getChildAt(i33);
                    sparseArray7.put(childAt4.getId(), constraintLayout.i(childAt4));
                }
                for (int i34 = 0; i34 < i31; i34++) {
                    View childAt5 = constraintLayout.getChildAt(i34);
                    p170w.d dVarI3 = constraintLayout.i(childAt5);
                    if (dVarI3 != null) {
                        p193z.e eVar7 = (p193z.e) childAt5.getLayoutParams();
                        eVar.f30889p0.add(dVarI3);
                        p170w.d dVar2 = dVarI3.f30810S;
                        if (dVar2 != null) {
                            ((p170w.j) dVar2).f30889p0.remove(dVarI3);
                            dVarI3.A();
                        }
                        dVarI3.f30810S = eVar;
                        g(z9, childAt5, dVarI3, eVar7, sparseArray7);
                    }
                }
            } else {
                eVar = eVar3;
                z8 = z7;
            }
            if (z8) {
                eVar.f30870q0.V(eVar);
            }
        } else {
            eVar = eVar3;
        }
        eVar.f30875v0.getClass();
        constraintLayout.j(eVar, constraintLayout.f8958O, i8, i9);
        int iO = eVar.o();
        int i35 = eVar.i();
        boolean z14 = eVar.f30862D0;
        boolean z15 = eVar.f30863E0;
        f fVar = constraintLayout.f8964U;
        int i36 = fVar.f31552e;
        int iResolveSizeAndState = View.resolveSizeAndState(iO + fVar.f31551d, i8, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(i35 + i36, i9, 0) & 16777215;
        int iMin = Math.min(constraintLayout.f8955L, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(constraintLayout.f8956M, iResolveSizeAndState2);
        if (z14) {
            iMin |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        if (z15) {
            iMin2 |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        constraintLayout.setMeasuredDimension(iMin, iMin2);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        p170w.d dVarI = i(view);
        if ((view instanceof Guideline) && !(dVarI instanceof p170w.f)) {
            p193z.e eVar = (p193z.e) view.getLayoutParams();
            p170w.f fVar = new p170w.f();
            eVar.f31537p0 = fVar;
            eVar.f31513d0 = true;
            fVar.O(eVar.f31501V);
        }
        if (view instanceof c) {
            c cVar = (c) view;
            cVar.e();
            ((p193z.e) view.getLayoutParams()).f31515e0 = true;
            ArrayList arrayList = this.f8951H;
            if (!arrayList.contains(cVar)) {
                arrayList.add(cVar);
            }
        }
        this.f8950G.put(view.getId(), view);
        this.f8957N = true;
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f8950G.remove(view.getId());
        p170w.d dVarI = i(view);
        this.f8952I.f30889p0.remove(dVarI);
        dVarI.A();
        this.f8951H.remove(view);
        this.f8957N = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f8957N = true;
        super.requestLayout();
    }

    public void setConstraintSet(o oVar) {
        this.f8959P = oVar;
    }

    @Override // android.view.View
    public void setId(int i8) {
        SparseArray sparseArray = this.f8950G;
        sparseArray.remove(getId());
        super.setId(i8);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i8) {
        if (i8 == this.f8956M) {
            return;
        }
        this.f8956M = i8;
        requestLayout();
    }

    public void setMaxWidth(int i8) {
        if (i8 == this.f8955L) {
            return;
        }
        this.f8955L = i8;
        requestLayout();
    }

    public void setMinHeight(int i8) {
        if (i8 == this.f8954K) {
            return;
        }
        this.f8954K = i8;
        requestLayout();
    }

    public void setMinWidth(int i8) {
        if (i8 == this.f8953J) {
            return;
        }
        this.f8953J = i8;
        requestLayout();
    }

    public void setOnConstraintsChanged(p193z.p pVar) {
        h hVar = this.f8960Q;
        if (hVar != null) {
            hVar.f31566f = pVar;
        }
    }

    public void setOptimizationLevel(int i8) {
        this.f8958O = i8;
        e eVar = this.f8952I;
        eVar.f30861C0 = i8;
        d.f30335q = eVar.S(IMediaList.Event.ItemAdded);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        p193z.e eVar = new p193z.e(layoutParams);
        eVar.f31506a = -1;
        eVar.f31508b = -1;
        eVar.f31510c = -1.0f;
        eVar.f31512d = true;
        eVar.f31514e = -1;
        eVar.f31516f = -1;
        eVar.f31518g = -1;
        eVar.f31520h = -1;
        eVar.f31522i = -1;
        eVar.f31524j = -1;
        eVar.f31526k = -1;
        eVar.f31528l = -1;
        eVar.f31530m = -1;
        eVar.f31532n = -1;
        eVar.f31534o = -1;
        eVar.f31536p = -1;
        eVar.f31538q = 0;
        eVar.f31539r = 0.0f;
        eVar.f31540s = -1;
        eVar.f31541t = -1;
        eVar.f31542u = -1;
        eVar.f31543v = -1;
        eVar.f31544w = Integer.MIN_VALUE;
        eVar.f31545x = Integer.MIN_VALUE;
        eVar.f31546y = Integer.MIN_VALUE;
        eVar.f31547z = Integer.MIN_VALUE;
        eVar.f31480A = Integer.MIN_VALUE;
        eVar.f31481B = Integer.MIN_VALUE;
        eVar.f31482C = Integer.MIN_VALUE;
        eVar.f31483D = 0;
        eVar.f31484E = 0.5f;
        eVar.f31485F = 0.5f;
        eVar.f31486G = null;
        eVar.f31487H = -1.0f;
        eVar.f31488I = -1.0f;
        eVar.f31489J = 0;
        eVar.f31490K = 0;
        eVar.f31491L = 0;
        eVar.f31492M = 0;
        eVar.f31493N = 0;
        eVar.f31494O = 0;
        eVar.f31495P = 0;
        eVar.f31496Q = 0;
        eVar.f31497R = 1.0f;
        eVar.f31498S = 1.0f;
        eVar.f31499T = -1;
        eVar.f31500U = -1;
        eVar.f31501V = -1;
        eVar.f31502W = false;
        eVar.f31503X = false;
        eVar.f31504Y = null;
        eVar.f31505Z = 0;
        eVar.f31507a0 = true;
        eVar.f31509b0 = true;
        eVar.f31511c0 = false;
        eVar.f31513d0 = false;
        eVar.f31515e0 = false;
        eVar.f31517f0 = -1;
        eVar.f31519g0 = -1;
        eVar.f31521h0 = -1;
        eVar.f31523i0 = -1;
        eVar.f31525j0 = Integer.MIN_VALUE;
        eVar.f31527k0 = Integer.MIN_VALUE;
        eVar.f31529l0 = 0.5f;
        eVar.f31537p0 = new p170w.d();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            ((ViewGroup.MarginLayoutParams) eVar).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) eVar).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) eVar).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = marginLayoutParams.bottomMargin;
            eVar.setMarginStart(marginLayoutParams.getMarginStart());
            eVar.setMarginEnd(marginLayoutParams.getMarginEnd());
        }
        if (layoutParams instanceof p193z.e) {
            p193z.e eVar2 = (p193z.e) layoutParams;
            eVar.f31506a = eVar2.f31506a;
            eVar.f31508b = eVar2.f31508b;
            eVar.f31510c = eVar2.f31510c;
            eVar.f31512d = eVar2.f31512d;
            eVar.f31514e = eVar2.f31514e;
            eVar.f31516f = eVar2.f31516f;
            eVar.f31518g = eVar2.f31518g;
            eVar.f31520h = eVar2.f31520h;
            eVar.f31522i = eVar2.f31522i;
            eVar.f31524j = eVar2.f31524j;
            eVar.f31526k = eVar2.f31526k;
            eVar.f31528l = eVar2.f31528l;
            eVar.f31530m = eVar2.f31530m;
            eVar.f31532n = eVar2.f31532n;
            eVar.f31534o = eVar2.f31534o;
            eVar.f31536p = eVar2.f31536p;
            eVar.f31538q = eVar2.f31538q;
            eVar.f31539r = eVar2.f31539r;
            eVar.f31540s = eVar2.f31540s;
            eVar.f31541t = eVar2.f31541t;
            eVar.f31542u = eVar2.f31542u;
            eVar.f31543v = eVar2.f31543v;
            eVar.f31544w = eVar2.f31544w;
            eVar.f31545x = eVar2.f31545x;
            eVar.f31546y = eVar2.f31546y;
            eVar.f31547z = eVar2.f31547z;
            eVar.f31480A = eVar2.f31480A;
            eVar.f31481B = eVar2.f31481B;
            eVar.f31482C = eVar2.f31482C;
            eVar.f31483D = eVar2.f31483D;
            eVar.f31484E = eVar2.f31484E;
            eVar.f31485F = eVar2.f31485F;
            eVar.f31486G = eVar2.f31486G;
            eVar.f31487H = eVar2.f31487H;
            eVar.f31488I = eVar2.f31488I;
            eVar.f31489J = eVar2.f31489J;
            eVar.f31490K = eVar2.f31490K;
            eVar.f31502W = eVar2.f31502W;
            eVar.f31503X = eVar2.f31503X;
            eVar.f31491L = eVar2.f31491L;
            eVar.f31492M = eVar2.f31492M;
            eVar.f31493N = eVar2.f31493N;
            eVar.f31495P = eVar2.f31495P;
            eVar.f31494O = eVar2.f31494O;
            eVar.f31496Q = eVar2.f31496Q;
            eVar.f31497R = eVar2.f31497R;
            eVar.f31498S = eVar2.f31498S;
            eVar.f31499T = eVar2.f31499T;
            eVar.f31500U = eVar2.f31500U;
            eVar.f31501V = eVar2.f31501V;
            eVar.f31507a0 = eVar2.f31507a0;
            eVar.f31509b0 = eVar2.f31509b0;
            eVar.f31511c0 = eVar2.f31511c0;
            eVar.f31513d0 = eVar2.f31513d0;
            eVar.f31517f0 = eVar2.f31517f0;
            eVar.f31519g0 = eVar2.f31519g0;
            eVar.f31521h0 = eVar2.f31521h0;
            eVar.f31523i0 = eVar2.f31523i0;
            eVar.f31525j0 = eVar2.f31525j0;
            eVar.f31527k0 = eVar2.f31527k0;
            eVar.f31529l0 = eVar2.f31529l0;
            eVar.f31504Y = eVar2.f31504Y;
            eVar.f31505Z = eVar2.f31505Z;
            eVar.f31537p0 = eVar2.f31537p0;
        }
        return eVar;
    }
}
