package p086l;

import N.N;
import X1.C0386e;
import X1.z;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import androidx.leanback.widget.A;
import androidx.leanback.widget.PagingIndicator;
import androidx.leanback.widget.V;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class b1 extends Property {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26221a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b1(int i8, Class cls, String str) {
        super(cls, str);
        this.f26221a = i8;
    }

    public final Float a(A a8) {
        switch (this.f26221a) {
            case 1:
                return Float.valueOf(a8.f9084a);
            case 2:
                return Float.valueOf(a8.f9088e);
            default:
                return Float.valueOf(a8.f9086c);
        }
    }

    public final void b(C0386e c0386e, PointF pointF) {
        switch (this.f26221a) {
            case 5:
                c0386e.getClass();
                c0386e.f7552a = Math.round(pointF.x);
                int iRound = Math.round(pointF.y);
                c0386e.f7553b = iRound;
                int i8 = c0386e.f7557f + 1;
                c0386e.f7557f = i8;
                if (i8 == c0386e.f7558g) {
                    z.a(c0386e.f7556e, c0386e.f7552a, iRound, c0386e.f7554c, c0386e.f7555d);
                    c0386e.f7557f = 0;
                    c0386e.f7558g = 0;
                }
                break;
            default:
                c0386e.getClass();
                c0386e.f7554c = Math.round(pointF.x);
                int iRound2 = Math.round(pointF.y);
                c0386e.f7555d = iRound2;
                int i9 = c0386e.f7558g + 1;
                c0386e.f7558g = i9;
                if (c0386e.f7557f == i9) {
                    z.a(c0386e.f7556e, c0386e.f7552a, c0386e.f7553b, c0386e.f7554c, iRound2);
                    c0386e.f7557f = 0;
                    c0386e.f7558g = 0;
                }
                break;
        }
    }

    public final void c(View view, PointF pointF) {
        switch (this.f26221a) {
            case 7:
                z.a(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
                break;
            case 8:
                z.a(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
                break;
            default:
                int iRound = Math.round(pointF.x);
                int iRound2 = Math.round(pointF.y);
                z.a(view, iRound, iRound2, view.getWidth() + iRound, view.getHeight() + iRound2);
                break;
        }
    }

    public final void d(A a8, Float f8) {
        switch (this.f26221a) {
            case 1:
                a8.f9084a = f8.floatValue();
                a8.a();
                a8.f9093j.invalidate();
                break;
            case 2:
                float fFloatValue = f8.floatValue();
                a8.f9088e = fFloatValue;
                float f9 = fFloatValue / 2.0f;
                a8.f9089f = f9;
                PagingIndicator pagingIndicator = a8.f9093j;
                a8.f9090g = f9 * pagingIndicator.f9173e0;
                pagingIndicator.invalidate();
                break;
            default:
                a8.f9086c = f8.floatValue() * a8.f9091h * a8.f9092i;
                a8.f9093j.invalidate();
                break;
        }
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        switch (this.f26221a) {
            case 0:
                return Float.valueOf(((SwitchCompat) obj).f8876i0);
            case 1:
                return a((A) obj);
            case 2:
                return a((A) obj);
            case 3:
                return a((A) obj);
            case 4:
                return Integer.valueOf(((V) obj).getStreamPosition());
            case 5:
                return null;
            case 6:
                return null;
            case 7:
                return null;
            case 8:
                return null;
            case 9:
                return null;
            case 10:
                return Float.valueOf(z.f7627a.g((View) obj));
            default:
                WeakHashMap weakHashMap = N.f4843a;
                return ((View) obj).getClipBounds();
        }
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        switch (this.f26221a) {
            case 0:
                ((SwitchCompat) obj).setThumbPosition(((Float) obj2).floatValue());
                break;
            case 1:
                d((A) obj, (Float) obj2);
                break;
            case 2:
                d((A) obj, (Float) obj2);
                break;
            case 3:
                d((A) obj, (Float) obj2);
                break;
            case 4:
                ((V) obj).setStreamPosition(((Integer) obj2).intValue());
                break;
            case 5:
                b((C0386e) obj, (PointF) obj2);
                break;
            case 6:
                b((C0386e) obj, (PointF) obj2);
                break;
            case 7:
                c((View) obj, (PointF) obj2);
                break;
            case 8:
                c((View) obj, (PointF) obj2);
                break;
            case 9:
                c((View) obj, (PointF) obj2);
                break;
            case 10:
                float fFloatValue = ((Float) obj2).floatValue();
                z.f7627a.j((View) obj, fFloatValue);
                break;
            default:
                WeakHashMap weakHashMap = N.f4843a;
                ((View) obj).setClipBounds((Rect) obj2);
                break;
        }
    }
}
