package F;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import java.lang.reflect.Array;
import org.xmlpull.v1.XmlPullParserException;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f2959a = new ThreadLocal();

    public static ColorStateList a(Resources resources, XmlResourceParser xmlResourceParser, Resources.Theme theme) {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(resources, xmlResourceParser, attributeSetAsAttributeSet, theme);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0092  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v9 */
    public static ColorStateList b(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int color;
        int i8;
        int iA;
        float f8;
        TypedValue typedValue;
        resources = resources;
        attributeSet = attributeSet;
        theme = theme;
        String name = xmlResourceParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        ?? r7 = 1;
        int depth2 = xmlResourceParser.getDepth() + 1;
        Object[] objArr = new int[20][];
        int[] iArr = new int[20];
        int i9 = 0;
        int i10 = 0;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == r7 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlResourceParser.getName().equals("item")) {
                int[] iArr2 = C.a.f1221a;
                TypedArray typedArrayObtainAttributes = theme == null ? resources.obtainAttributes(attributeSet, iArr2) : theme.obtainStyledAttributes(attributeSet, iArr2, i9, i9);
                int resourceId = typedArrayObtainAttributes.getResourceId(i9, -1);
                if (resourceId != -1) {
                    ThreadLocal threadLocal = f2959a;
                    TypedValue typedValue2 = (TypedValue) threadLocal.get();
                    if (typedValue2 == null) {
                        typedValue = new TypedValue();
                        threadLocal.set(typedValue);
                    } else {
                        typedValue = typedValue2;
                    }
                    resources.getValue(resourceId, typedValue, (boolean) r7);
                    int i11 = typedValue.type;
                    if (i11 < 28 || i11 > 31) {
                        try {
                            color = a(resources, resources.getXml(resourceId), theme).getDefaultColor();
                        } catch (Exception unused) {
                            color = typedArrayObtainAttributes.getColor(i9, -65281);
                        }
                    } else {
                        color = typedArrayObtainAttributes.getColor(i9, -65281);
                    }
                } else {
                    color = typedArrayObtainAttributes.getColor(i9, -65281);
                }
                float f9 = typedArrayObtainAttributes.hasValue(r7) ? typedArrayObtainAttributes.getFloat(r7, 1.0f) : typedArrayObtainAttributes.hasValue(3) ? typedArrayObtainAttributes.getFloat(3, 1.0f) : 1.0f;
                float f10 = (Build.VERSION.SDK_INT < 31 || !typedArrayObtainAttributes.hasValue(2)) ? typedArrayObtainAttributes.getFloat(4, -1.0f) : typedArrayObtainAttributes.getFloat(2, -1.0f);
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] iArr3 = new int[attributeCount];
                int i12 = 0;
                for (int i13 = 0; i13 < attributeCount; i13++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(i13);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != R.attr.alpha && attributeNameResource != R.attr.lStar) {
                        int i14 = i12 + 1;
                        if (!attributeSet.getAttributeBooleanValue(i13, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        iArr3[i12] = attributeNameResource;
                        i12 = i14;
                    }
                }
                int[] iArrTrimStateSet = StateSet.trimStateSet(iArr3, i12);
                boolean z7 = f10 >= 0.0f && f10 <= 100.0f;
                if (f9 != 1.0f || z7) {
                    int iAlpha = (int) ((Color.alpha(color) * f9) + 0.5f);
                    if (iAlpha < 0) {
                        i8 = 0;
                    } else {
                        i8 = 255;
                        if (iAlpha <= 255) {
                            i8 = iAlpha;
                        }
                    }
                    if (z7) {
                        a aVarA = a.a(color);
                        o oVar = o.f2993k;
                        float f11 = aVarA.f2947b;
                        if (f11 >= 1.0d && Math.round(f10) > 0.0d && Math.round(f10) < 100.0d) {
                            float f12 = aVarA.f2946a;
                            float fMin = f12 < 0.0f ? 0.0f : Math.min(360.0f, f12);
                            float f13 = f11;
                            a aVar = null;
                            boolean z8 = true;
                            float f14 = 0.0f;
                            while (true) {
                                if (Math.abs(f14 - f11) < 0.4f) {
                                    depth2 = depth2;
                                    if (aVar != null) {
                                        iA = aVar.e(oVar);
                                        break;
                                    }
                                    iA = b.a(f10);
                                    break;
                                }
                                float f15 = 1000.0f;
                                float f16 = 1000.0f;
                                float f17 = 0.0f;
                                float f18 = 100.0f;
                                a aVar2 = null;
                                while (true) {
                                    if (Math.abs(f17 - f18) <= 0.01f) {
                                        depth2 = depth2;
                                        fMin = fMin;
                                        break;
                                    }
                                    float f19 = ((f18 - f17) / 2.0f) + f17;
                                    int iE = a.b(f19, f13, fMin).e(o.f2993k);
                                    float fB = b.b(Color.red(iE));
                                    float fB2 = b.b(Color.green(iE));
                                    float fB3 = b.b(Color.blue(iE));
                                    float[] fArr = b.f2958d[1];
                                    float f20 = ((fB3 * fArr[2]) + ((fB2 * fArr[1]) + (fB * fArr[0]))) / 100.0f;
                                    float fCbrt = f20 <= 0.008856452f ? f20 * 903.2963f : (((float) Math.cbrt(f20)) * 116.0f) - 16.0f;
                                    float fAbs = Math.abs(f10 - fCbrt);
                                    if (fAbs < 0.2f) {
                                        a aVarA2 = a.a(iE);
                                        a aVarB = a.b(aVarA2.f2948c, aVarA2.f2947b, fMin);
                                        f8 = f19;
                                        float f21 = aVarA2.f2952g - aVarB.f2952g;
                                        fMin = fMin;
                                        float f22 = aVarA2.f2953h - aVarB.f2953h;
                                        float f23 = aVarA2.f2954i - aVarB.f2954i;
                                        float fPow = (float) (Math.pow(Math.sqrt((f23 * f23) + (f22 * f22) + (f21 * f21)), 0.63d) * 1.41d);
                                        if (fPow <= 1.0f) {
                                            aVar2 = aVarA2;
                                            f16 = fPow;
                                            f15 = fAbs;
                                        }
                                    } else {
                                        f8 = f19;
                                        fMin = fMin;
                                    }
                                    if (f15 == 0.0f && f16 == 0.0f) {
                                        break;
                                    }
                                    if (fCbrt < f10) {
                                        f17 = f8;
                                    } else {
                                        f18 = f8;
                                    }
                                    depth2 = depth2;
                                    fMin = fMin;
                                }
                                a aVar3 = aVar2;
                                if (!z8) {
                                    if (aVar3 == null) {
                                        f11 = f13;
                                    } else {
                                        aVar = aVar3;
                                        f14 = f13;
                                    }
                                    f13 = ((f11 - f14) / 2.0f) + f14;
                                } else {
                                    if (aVar3 != null) {
                                        iA = aVar3.e(oVar);
                                        break;
                                    }
                                    f13 = ((f11 - f14) / 2.0f) + f14;
                                    z8 = false;
                                }
                            }
                        } else {
                            depth2 = depth2;
                            iA = b.a(f10);
                        }
                        color = iA;
                    } else {
                        depth2 = depth2;
                    }
                    color = (16777215 & color) | (i8 << 24);
                } else {
                    depth2 = depth2;
                }
                int i15 = i10 + 1;
                if (i15 > iArr.length) {
                    int[] iArr4 = new int[i10 <= 4 ? 8 : i10 * 2];
                    System.arraycopy(iArr, 0, iArr4, 0, i10);
                    iArr = iArr4;
                }
                iArr[i10] = color;
                if (i15 > objArr.length) {
                    Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i10 > 4 ? i10 * 2 : 8);
                    System.arraycopy(objArr, 0, objArr2, 0, i10);
                    objArr = objArr2;
                }
                objArr[i10] = iArrTrimStateSet;
                objArr = (int[][]) objArr;
                i10 = i15;
                depth2 = depth2;
                r7 = 1;
                i9 = 0;
            } else {
                depth2 = depth2;
                r7 = 1;
                i9 = 0;
            }
        }
        int[] iArr5 = new int[i10];
        int[][] iArr6 = new int[i10][];
        System.arraycopy(iArr, 0, iArr5, 0, i10);
        System.arraycopy(objArr, 0, iArr6, 0, i10);
        return new ColorStateList(iArr6, iArr5);
    }
}
