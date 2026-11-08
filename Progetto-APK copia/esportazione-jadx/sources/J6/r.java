package J6;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.drawable.Drawable;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.Trace;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import com.google.android.gms.internal.ads.C2061tz;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.Ty;
import com.google.android.gms.internal.ads.Uy;
import com.google.android.gms.internal.ads.Xu;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.videolan.libvlc.MediaPlayer;
import org.xmlpull.v1.XmlPullParserException;
import p086l.V0;
import p090l3.C3099q;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long f4248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f4249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final p120p3.e f4250c = new p120p3.e("CLOSED_EMPTY", 5);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p120p3.e f4251d = new p120p3.e("COMPLETING_ALREADY", 5);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final p120p3.e f4252e = new p120p3.e("COMPLETING_WAITING_CHILDREN", 5);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final p120p3.e f4253f = new p120p3.e("COMPLETING_RETRY", 5);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final p120p3.e f4254g = new p120p3.e("TOO_LATE_TO_CANCEL", 5);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final p120p3.e f4255h = new p120p3.e("SEALED", 5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final A f4256i = new A(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final A f4257j = new A(true);

    public static final void a(p132r.g gVar, int i8) {
        q0.h(gVar, "<this>");
        gVar.f29660G = new int[i8];
        gVar.f29661H = new Object[i8];
    }

    public static void b(String str) {
        if (str.length() > 127) {
            str = str.substring(0, 127);
        }
        Trace.beginSection(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0085, code lost:
    
        if (r2 == 0) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int c(android.content.Context r7, java.lang.String r8) {
        /*
            int r0 = android.os.Process.myPid()
            int r1 = android.os.Process.myUid()
            java.lang.String r2 = r7.getPackageName()
            int r0 = r7.checkPermission(r8, r0, r1)
            r3 = -1
            if (r0 != r3) goto L15
            goto L8a
        L15:
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 23
            if (r0 < r4) goto L20
            java.lang.String r8 = p086l.H.l(r8)
            goto L21
        L20:
            r8 = 0
        L21:
            r5 = 0
            if (r8 != 0) goto L27
        L24:
            r3 = 0
            goto L8a
        L27:
            if (r2 != 0) goto L39
            android.content.pm.PackageManager r2 = r7.getPackageManager()
            java.lang.String[] r2 = r2.getPackagesForUid(r1)
            if (r2 == 0) goto L8a
            int r6 = r2.length
            if (r6 > 0) goto L37
            goto L8a
        L37:
            r2 = r2[r5]
        L39:
            int r3 = android.os.Process.myUid()
            java.lang.String r6 = r7.getPackageName()
            if (r3 != r1) goto L79
            boolean r3 = java.util.Objects.equals(r6, r2)
            if (r3 == 0) goto L79
            r3 = 29
            if (r0 < r3) goto L6c
            android.app.AppOpsManager r0 = D.g.d(r7)
            int r3 = android.os.Binder.getCallingUid()
            if (r0 != 0) goto L59
            r2 = 1
            goto L5d
        L59:
            int r2 = r0.checkOpNoThrow(r8, r3, r2)
        L5d:
            if (r2 == 0) goto L60
            goto L85
        L60:
            java.lang.String r7 = D.g.c(r7)
            if (r0 != 0) goto L67
            goto L88
        L67:
            int r2 = r0.checkOpNoThrow(r8, r1, r7)
            goto L85
        L6c:
            if (r0 < r4) goto L88
            java.lang.Object r7 = p086l.H.h(r7)
            android.app.AppOpsManager r7 = (android.app.AppOpsManager) r7
            int r2 = p086l.H.k(r7, r8, r2)
            goto L85
        L79:
            if (r0 < r4) goto L88
            java.lang.Object r7 = p086l.H.h(r7)
            android.app.AppOpsManager r7 = (android.app.AppOpsManager) r7
            int r2 = p086l.H.k(r7, r8, r2)
        L85:
            if (r2 != 0) goto L88
            goto L24
        L88:
            r7 = -2
            r3 = -2
        L8a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: J6.r.c(android.content.Context, java.lang.String):int");
    }

    public static Animator d(Context context, Resources resources, Resources.Theme theme, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i8) throws XmlPullParserException, IOException {
        PropertyValuesHolder[] propertyValuesHolderArr;
        AttributeSet attributeSet2;
        String str;
        PropertyValuesHolder propertyValuesHolderJ;
        int size;
        int i9;
        int i10;
        Keyframe keyframeOfFloat;
        Resources resources2 = resources;
        Resources.Theme theme2 = theme;
        XmlResourceParser xmlResourceParser2 = xmlResourceParser;
        int depth = xmlResourceParser.getDepth();
        Animator animatorN = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlResourceParser.next();
            boolean z7 = false;
            int i11 = 3;
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                break;
            }
            int i12 = 1;
            if (next == 1) {
                break;
            }
            int i13 = 2;
            if (next == 2) {
                String name = xmlResourceParser.getName();
                if (name.equals("objectAnimator")) {
                    ObjectAnimator objectAnimator = new ObjectAnimator();
                    n(context, resources, theme, attributeSet, objectAnimator, xmlResourceParser);
                    animatorN = objectAnimator;
                } else if (name.equals("animator")) {
                    animatorN = n(context, resources, theme, attributeSet, null, xmlResourceParser);
                } else if (name.equals("set")) {
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    TypedArray typedArrayN = Z3.H.n(resources2, theme2, attributeSet, Y1.a.f8054h);
                    d(context, resources, theme, xmlResourceParser, attributeSet, animatorSet2, !Z3.H.j(xmlResourceParser2, "ordering") ? 0 : typedArrayN.getInt(0, 0));
                    typedArrayN.recycle();
                    animatorN = animatorSet2;
                } else {
                    String str2 = "propertyValuesHolder";
                    if (!name.equals("propertyValuesHolder")) {
                        throw new RuntimeException("Unknown animator name: " + xmlResourceParser.getName());
                    }
                    AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                    ArrayList arrayList2 = null;
                    while (true) {
                        int eventType = xmlResourceParser.getEventType();
                        if (eventType == i11 || eventType == i12) {
                            break;
                        }
                        if (eventType != i13) {
                            xmlResourceParser.next();
                        } else {
                            if (xmlResourceParser.getName().equals(str2)) {
                                TypedArray typedArrayN2 = Z3.H.n(resources2, theme2, attributeSetAsAttributeSet, Y1.a.f8055i);
                                String strG = Z3.H.g(typedArrayN2, xmlResourceParser2, "propertyName", i11);
                                int i14 = !Z3.H.j(xmlResourceParser2, "valueType") ? 4 : typedArrayN2.getInt(i13, 4);
                                int i15 = i14;
                                ArrayList arrayList3 = null;
                                while (true) {
                                    int next2 = xmlResourceParser.next();
                                    attributeSet2 = attributeSetAsAttributeSet;
                                    if (next2 == i11 || next2 == 1) {
                                        break;
                                    }
                                    if (xmlResourceParser.getName().equals("keyframe")) {
                                        int[] iArr = Y1.a.f8056j;
                                        i10 = i15;
                                        if (i10 == 4) {
                                            TypedArray typedArrayN3 = Z3.H.n(resources2, theme2, Xml.asAttributeSet(xmlResourceParser), iArr);
                                            TypedValue typedValuePeekValue = !Z3.H.j(xmlResourceParser2, "value") ? null : typedArrayN3.peekValue(0);
                                            int i16 = (typedValuePeekValue == null || !l(typedValuePeekValue.type)) ? 0 : 3;
                                            typedArrayN3.recycle();
                                            i10 = i16;
                                        }
                                        TypedArray typedArrayN4 = Z3.H.n(resources2, theme2, Xml.asAttributeSet(xmlResourceParser), iArr);
                                        float f8 = Z3.H.j(xmlResourceParser2, "fraction") ? typedArrayN4.getFloat(3, -1.0f) : -1.0f;
                                        TypedValue typedValuePeekValue2 = !Z3.H.j(xmlResourceParser2, "value") ? null : typedArrayN4.peekValue(0);
                                        boolean z8 = typedValuePeekValue2 != null;
                                        int i17 = i10 == 4 ? (z8 && l(typedValuePeekValue2.type)) ? 3 : 0 : i10;
                                        if (!z8) {
                                            keyframeOfFloat = i17 == 0 ? Keyframe.ofFloat(f8) : Keyframe.ofInt(f8);
                                        } else if (i17 == 0) {
                                            keyframeOfFloat = Keyframe.ofFloat(f8, !Z3.H.j(xmlResourceParser2, "value") ? 0.0f : typedArrayN4.getFloat(0, 0.0f));
                                        } else if (i17 == 1 || i17 == 3) {
                                            keyframeOfFloat = Keyframe.ofInt(f8, !Z3.H.j(xmlResourceParser2, "value") ? 0 : typedArrayN4.getInt(0, 0));
                                        } else {
                                            keyframeOfFloat = null;
                                        }
                                        int resourceId = !Z3.H.j(xmlResourceParser2, "interpolator") ? 0 : typedArrayN4.getResourceId(1, 0);
                                        if (resourceId > 0) {
                                            keyframeOfFloat.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
                                        }
                                        typedArrayN4.recycle();
                                        if (keyframeOfFloat != null) {
                                            if (arrayList3 == null) {
                                                arrayList3 = new ArrayList();
                                            }
                                            arrayList3.add(keyframeOfFloat);
                                        }
                                        xmlResourceParser.next();
                                    } else {
                                        i10 = i15;
                                    }
                                    resources2 = resources;
                                    theme2 = theme;
                                    str2 = str2;
                                    attributeSetAsAttributeSet = attributeSet2;
                                    i15 = i10;
                                    i11 = 3;
                                }
                                int i18 = i15;
                                str = str2;
                                if (arrayList3 == null || (size = arrayList3.size()) <= 0) {
                                    propertyValuesHolderJ = null;
                                } else {
                                    Keyframe keyframe = (Keyframe) arrayList3.get(0);
                                    Keyframe keyframe2 = (Keyframe) arrayList3.get(size - 1);
                                    float fraction = keyframe2.getFraction();
                                    if (fraction < 1.0f) {
                                        if (fraction < 0.0f) {
                                            keyframe2.setFraction(1.0f);
                                        } else {
                                            arrayList3.add(arrayList3.size(), keyframe2.getType() == Float.TYPE ? Keyframe.ofFloat(1.0f) : keyframe2.getType() == Integer.TYPE ? Keyframe.ofInt(1.0f) : Keyframe.ofObject(1.0f));
                                            size++;
                                        }
                                    }
                                    float fraction2 = keyframe.getFraction();
                                    if (fraction2 != 0.0f) {
                                        if (fraction2 < 0.0f) {
                                            keyframe.setFraction(0.0f);
                                        } else {
                                            arrayList3.add(0, keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(0.0f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(0.0f) : Keyframe.ofObject(0.0f));
                                            size++;
                                        }
                                    }
                                    Keyframe[] keyframeArr = new Keyframe[size];
                                    arrayList3.toArray(keyframeArr);
                                    int i19 = 0;
                                    while (i19 < size) {
                                        Keyframe keyframe3 = keyframeArr[i19];
                                        if (keyframe3.getFraction() >= 0.0f) {
                                            i9 = size;
                                        } else {
                                            if (i19 == 0) {
                                                keyframe3.setFraction(0.0f);
                                            } else {
                                                int i20 = size - 1;
                                                if (i19 == i20) {
                                                    keyframe3.setFraction(1.0f);
                                                } else {
                                                    int i21 = i19;
                                                    for (int i22 = i19 + 1; i22 < i20 && keyframeArr[i22].getFraction() < 0.0f; i22++) {
                                                        i21 = i22;
                                                    }
                                                    float fraction3 = (keyframeArr[i21 + 1].getFraction() - keyframeArr[i19 - 1].getFraction()) / ((i21 - i19) + 2);
                                                    int i23 = i19;
                                                    while (i23 <= i21) {
                                                        keyframeArr[i23].setFraction(keyframeArr[i23 - 1].getFraction() + fraction3);
                                                        i23++;
                                                        size = size;
                                                    }
                                                    i9 = size;
                                                }
                                            }
                                            i9 = size;
                                        }
                                        i19++;
                                        size = i9;
                                    }
                                    propertyValuesHolderJ = PropertyValuesHolder.ofKeyframe(strG, keyframeArr);
                                    if (i18 == 3) {
                                        propertyValuesHolderJ.setEvaluator(Y1.e.f8066a);
                                    }
                                }
                                if (propertyValuesHolderJ == null) {
                                    propertyValuesHolderJ = j(typedArrayN2, i14, 0, 1, strG);
                                }
                                if (propertyValuesHolderJ != null) {
                                    if (arrayList2 == null) {
                                        arrayList2 = new ArrayList();
                                    }
                                    arrayList2.add(propertyValuesHolderJ);
                                }
                                typedArrayN2.recycle();
                            } else {
                                attributeSet2 = attributeSetAsAttributeSet;
                                str = str2;
                            }
                            xmlResourceParser.next();
                            resources2 = resources;
                            theme2 = theme;
                            xmlResourceParser2 = xmlResourceParser;
                            str2 = str;
                            attributeSetAsAttributeSet = attributeSet2;
                            i11 = 3;
                            i12 = 1;
                            i13 = 2;
                        }
                    }
                    if (arrayList2 != null) {
                        int size2 = arrayList2.size();
                        propertyValuesHolderArr = new PropertyValuesHolder[size2];
                        for (int i24 = 0; i24 < size2; i24++) {
                            propertyValuesHolderArr[i24] = (PropertyValuesHolder) arrayList2.get(i24);
                        }
                    } else {
                        propertyValuesHolderArr = null;
                    }
                    if (propertyValuesHolderArr != null && (animatorN instanceof ValueAnimator)) {
                        ((ValueAnimator) animatorN).setValues(propertyValuesHolderArr);
                    }
                    z7 = true;
                }
                if (animatorSet != null && !z7) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(animatorN);
                }
                resources2 = resources;
                theme2 = theme;
                xmlResourceParser2 = xmlResourceParser;
            }
        }
        if (animatorSet != null && arrayList != null) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it = arrayList.iterator();
            int i25 = 0;
            while (it.hasNext()) {
                animatorArr[i25] = (Animator) it.next();
                i25++;
            }
            if (i8 == 0) {
                animatorSet.playTogether(animatorArr);
            } else {
                animatorSet.playSequentially(animatorArr);
            }
        }
        return animatorN;
    }

    public static p072j0.c e(R0.t tVar) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = ((R0.c) tVar).f6127c.length;
        int i8 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            if (((R0.c) tVar).p(i9, jElapsedRealtime)) {
                i8++;
            }
        }
        return new p072j0.c(1, 0, length, i8);
    }

    public static Bitmap f(byte[] bArr, int i8, int i9) throws IOException {
        BitmapFactory.Options options;
        int i10 = 0;
        int iE = 1;
        if (i9 != -1) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, i8, options);
            options.inJustDecodeBounds = false;
            options.inSampleSize = 1;
            for (int iMax = Math.max(options.outWidth, options.outHeight); iMax > i9; iMax /= 2) {
                options.inSampleSize *= 2;
            }
        } else {
            options = null;
        }
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, i8, options);
        if (options != null) {
            options.inSampleSize = 1;
        }
        if (bitmapDecodeByteArray == null) {
            throw p094m0.P.a("Could not decode image data", new IllegalStateException());
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            W.g gVar = new W.g(byteArrayInputStream);
            byteArrayInputStream.close();
            W.c cVarC = gVar.c("Orientation");
            if (cVarC != null) {
                try {
                    iE = cVarC.e(gVar.f7295f);
                } catch (NumberFormatException unused) {
                }
            }
            switch (iE) {
                case 3:
                case 4:
                    i10 = 180;
                    break;
                case 5:
                case 8:
                    i10 = MediaPlayer.Event.PausableChanged;
                    break;
                case 6:
                case 7:
                    i10 = 90;
                    break;
            }
            if (i10 == 0) {
                return bitmapDecodeByteArray;
            }
            Matrix matrix = new Matrix();
            matrix.postRotate(i10);
            return Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), matrix, false);
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static ColorStateList g(Context context, int i8) {
        ColorStateList colorStateListA;
        ColorStateList colorStateList;
        F.j jVar;
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        F.k kVar = new F.k(resources, theme);
        synchronized (F.n.f2992c) {
            try {
                SparseArray sparseArray = (SparseArray) F.n.f2991b.get(kVar);
                colorStateListA = null;
                if (sparseArray == null || sparseArray.size() <= 0 || (jVar = (F.j) sparseArray.get(i8)) == null) {
                    colorStateList = null;
                } else {
                    if (jVar.f2980b.equals(resources.getConfiguration())) {
                        if (theme != null || jVar.f2981c != 0) {
                            if (theme == null || jVar.f2981c != theme.hashCode()) {
                            }
                        }
                        colorStateList = jVar.f2979a;
                    }
                    sparseArray.remove(i8);
                    colorStateList = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        ThreadLocal threadLocal = F.n.f2990a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i8, typedValue, true);
        int i9 = typedValue.type;
        if (i9 < 28 || i9 > 31) {
            try {
                colorStateListA = F.c.a(resources, resources.getXml(i8), theme);
            } catch (Exception e8) {
                Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e8);
            }
        }
        if (colorStateListA == null) {
            return Build.VERSION.SDK_INT >= 23 ? p086l.H.e(i8, theme, resources) : resources.getColorStateList(i8);
        }
        F.n.a(kVar, i8, colorStateListA, theme);
        return colorStateListA;
    }

    public static Drawable h(Context context, int i8) {
        return V0.d().f(context, i8);
    }

    public static final String i(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static PropertyValuesHolder j(TypedArray typedArray, int i8, int i9, int i10, String str) {
        int color;
        int color2;
        int color3;
        PropertyValuesHolder propertyValuesHolderOfFloat;
        PropertyValuesHolder propertyValuesHolderOfObject;
        TypedValue typedValuePeekValue = typedArray.peekValue(i9);
        int i11 = 1;
        boolean z7 = typedValuePeekValue != null;
        int i12 = z7 ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i10);
        boolean z8 = typedValuePeekValue2 != null;
        int i13 = z8 ? typedValuePeekValue2.type : 0;
        if (i8 == 4) {
            i8 = ((z7 && l(i12)) || (z8 && l(i13))) ? 3 : 0;
        }
        boolean z9 = i8 == 0;
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i8 == 2) {
            String string = typedArray.getString(i9);
            String string2 = typedArray.getString(i10);
            G.d[] dVarArrM = H1.m(string);
            G.d[] dVarArrM2 = H1.m(string2);
            if (dVarArrM == null && dVarArrM2 == null) {
                return null;
            }
            if (dVarArrM == null) {
                if (dVarArrM2 != null) {
                    return PropertyValuesHolder.ofObject(str, new X1.m(i11), dVarArrM2);
                }
                return null;
            }
            X1.m mVar = new X1.m(i11);
            if (dVarArrM2 == null) {
                propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, mVar, dVarArrM);
            } else {
                if (!H1.b(dVarArrM, dVarArrM2)) {
                    throw new InflateException(U2.m(" Can't morph from ", string, " to ", string2));
                }
                propertyValuesHolderOfObject = PropertyValuesHolder.ofObject(str, mVar, dVarArrM, dVarArrM2);
            }
            return propertyValuesHolderOfObject;
        }
        Y1.e eVar = i8 == 3 ? Y1.e.f8066a : null;
        if (z9) {
            if (z7) {
                float dimension = i12 == 5 ? typedArray.getDimension(i9, 0.0f) : typedArray.getFloat(i9, 0.0f);
                if (z8) {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension, i13 == 5 ? typedArray.getDimension(i10, 0.0f) : typedArray.getFloat(i10, 0.0f));
                } else {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, i13 == 5 ? typedArray.getDimension(i10, 0.0f) : typedArray.getFloat(i10, 0.0f));
            }
            propertyValuesHolderOfInt = propertyValuesHolderOfFloat;
        } else if (z7) {
            if (i12 == 5) {
                color2 = (int) typedArray.getDimension(i9, 0.0f);
            } else {
                color2 = l(i12) ? typedArray.getColor(i9, 0) : typedArray.getInt(i9, 0);
            }
            if (z8) {
                if (i13 == 5) {
                    color3 = (int) typedArray.getDimension(i10, 0.0f);
                } else {
                    color3 = l(i13) ? typedArray.getColor(i10, 0) : typedArray.getInt(i10, 0);
                }
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2, color3);
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2);
            }
        } else if (z8) {
            if (i13 == 5) {
                color = (int) typedArray.getDimension(i10, 0.0f);
            } else {
                color = l(i13) ? typedArray.getColor(i10, 0) : typedArray.getInt(i10, 0);
            }
            propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color);
        }
        if (propertyValuesHolderOfInt == null || eVar == null) {
            return propertyValuesHolderOfInt;
        }
        propertyValuesHolderOfInt.setEvaluator(eVar);
        return propertyValuesHolderOfInt;
    }

    public static final int k(p132r.g gVar, Object obj, int i8) {
        q0.h(gVar, "<this>");
        int i9 = gVar.f29662I;
        if (i9 == 0) {
            return -1;
        }
        try {
            int iA = p140s.a.a(gVar.f29662I, i8, gVar.f29660G);
            if (iA < 0 || q0.c(obj, gVar.f29661H[iA])) {
                return iA;
            }
            int i10 = iA + 1;
            while (i10 < i9 && gVar.f29660G[i10] == i8) {
                if (q0.c(obj, gVar.f29661H[i10])) {
                    return i10;
                }
                i10++;
            }
            for (int i11 = iA - 1; i11 >= 0 && gVar.f29660G[i11] == i8; i11--) {
                if (q0.c(obj, gVar.f29661H[i11])) {
                    return i11;
                }
            }
            return ~i10;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static boolean l(int i8) {
        return i8 >= 28 && i8 <= 31;
    }

    public static boolean m() {
        if (Build.VERSION.SDK_INT >= 29) {
            return W1.a.a();
        }
        try {
            if (f4249b == null) {
                f4248a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f4249b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f4249b.invoke(null, Long.valueOf(f4248a))).booleanValue();
        } catch (Exception e8) {
            if (!(e8 instanceof InvocationTargetException)) {
                Log.v("Trace", "Unable to call isTagEnabled via reflection", e8);
                return false;
            }
            Throwable cause = e8.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:103:0x0203  */
    /* JADX WARN: Code duplicated, block: B:105:0x020b  */
    /* JADX WARN: Code duplicated, block: B:106:0x0217  */
    /* JADX WARN: Code duplicated, block: B:109:0x021e  */
    public static ValueAnimator n(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlResourceParser xmlResourceParser) {
        ValueAnimator valueAnimator;
        TypedArray typedArray;
        int i8;
        TypedArray typedArray2;
        int resourceId;
        ValueAnimator valueAnimator2;
        int i9 = 1;
        TypedArray typedArrayN = Z3.H.n(resources, theme, attributeSet, Y1.a.f8053g);
        TypedArray typedArrayN2 = Z3.H.n(resources, theme, attributeSet, Y1.a.f8057k);
        ValueAnimator valueAnimator3 = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        long j8 = Z3.H.j(xmlResourceParser, "duration") ? typedArrayN.getInt(1, 300) : 300;
        long j9 = !Z3.H.j(xmlResourceParser, "startOffset") ? 0 : typedArrayN.getInt(2, 0);
        int i10 = !Z3.H.j(xmlResourceParser, "valueType") ? 4 : typedArrayN.getInt(7, 4);
        if (Z3.H.j(xmlResourceParser, "valueFrom") && Z3.H.j(xmlResourceParser, "valueTo")) {
            if (i10 == 4) {
                TypedValue typedValuePeekValue = typedArrayN.peekValue(5);
                boolean z7 = typedValuePeekValue != null;
                int i11 = z7 ? typedValuePeekValue.type : 0;
                TypedValue typedValuePeekValue2 = typedArrayN.peekValue(6);
                boolean z8 = typedValuePeekValue2 != null;
                i10 = ((z7 && l(i11)) || (z8 && l(z8 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder propertyValuesHolderJ = j(typedArrayN, i10, 5, 6, HttpUrl.FRAGMENT_ENCODE_SET);
            if (propertyValuesHolderJ != null) {
                valueAnimator3.setValues(propertyValuesHolderJ);
            }
        }
        valueAnimator3.setDuration(j8);
        valueAnimator3.setStartDelay(j9);
        valueAnimator3.setRepeatCount(!Z3.H.j(xmlResourceParser, "repeatCount") ? 0 : typedArrayN.getInt(3, 0));
        valueAnimator3.setRepeatMode(!Z3.H.j(xmlResourceParser, "repeatMode") ? 1 : typedArrayN.getInt(4, 1));
        if (typedArrayN2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator3;
            String strG = Z3.H.g(typedArrayN2, xmlResourceParser, "pathData", 1);
            if (strG != null) {
                String strG2 = Z3.H.g(typedArrayN2, xmlResourceParser, "propertyXName", 2);
                String strG3 = Z3.H.g(typedArrayN2, xmlResourceParser, "propertyYName", 3);
                if (strG2 == null && strG3 == null) {
                    throw new InflateException(typedArrayN2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path path = new Path();
                try {
                    G.d.b(H1.m(strG), path);
                    PathMeasure pathMeasure = new PathMeasure(path, false);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Float.valueOf(0.0f));
                    float length = 0.0f;
                    while (true) {
                        length += pathMeasure.getLength();
                        arrayList.add(Float.valueOf(length));
                        if (!pathMeasure.nextContour()) {
                            break;
                        }
                        valueAnimator3 = valueAnimator3;
                        i9 = 1;
                    }
                    PathMeasure pathMeasure2 = new PathMeasure(path, false);
                    int iMin = Math.min(100, ((int) (length / 0.5f)) + i9);
                    float[] fArr = new float[iMin];
                    float[] fArr2 = new float[iMin];
                    float[] fArr3 = new float[2];
                    float f8 = length / (iMin - 1);
                    valueAnimator = valueAnimator3;
                    typedArray = typedArrayN;
                    int i12 = 0;
                    int i13 = 0;
                    float f9 = 0.0f;
                    while (true) {
                        if (i13 >= iMin) {
                            break;
                        }
                        int i14 = iMin;
                        pathMeasure2.getPosTan(f9 - ((Float) arrayList.get(i12)).floatValue(), fArr3, null);
                        fArr[i13] = fArr3[0];
                        fArr2[i13] = fArr3[1];
                        f9 += f8;
                        int i15 = i12 + 1;
                        if (i15 < arrayList.size() && f9 > ((Float) arrayList.get(i15)).floatValue()) {
                            pathMeasure2.nextContour();
                            i12 = i15;
                        }
                        i13++;
                        iMin = i14;
                    }
                    PropertyValuesHolder propertyValuesHolderOfFloat = strG2 != null ? PropertyValuesHolder.ofFloat(strG2, fArr) : null;
                    PropertyValuesHolder propertyValuesHolderOfFloat2 = strG3 != null ? PropertyValuesHolder.ofFloat(strG3, fArr2) : null;
                    if (propertyValuesHolderOfFloat == null) {
                        objectAnimator2.setValues(propertyValuesHolderOfFloat2);
                    } else if (propertyValuesHolderOfFloat2 == null) {
                        objectAnimator2.setValues(propertyValuesHolderOfFloat);
                    } else {
                        objectAnimator2.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
                    }
                } catch (RuntimeException e8) {
                    throw new RuntimeException("Error in parsing ".concat(strG), e8);
                }
            } else {
                valueAnimator = valueAnimator3;
                typedArray = typedArrayN;
                i8 = 0;
                objectAnimator2.setPropertyName(Z3.H.g(typedArrayN2, xmlResourceParser, "propertyName", 0));
            }
            if (Z3.H.j(xmlResourceParser, "interpolator")) {
                typedArray2 = typedArray;
                resourceId = typedArray2.getResourceId(i8, i8);
            } else {
                typedArray2 = typedArray;
                resourceId = 0;
            }
            if (resourceId > 0) {
                valueAnimator2 = valueAnimator;
                valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
            } else {
                valueAnimator2 = valueAnimator;
            }
            typedArray2.recycle();
            if (typedArrayN2 != null) {
                typedArrayN2.recycle();
            }
            return valueAnimator2;
        }
        valueAnimator = valueAnimator3;
        typedArray = typedArrayN;
        i8 = 0;
        if (Z3.H.j(xmlResourceParser, "interpolator")) {
            typedArray2 = typedArray;
            resourceId = 0;
        } else {
            typedArray2 = typedArray;
            resourceId = typedArray2.getResourceId(i8, i8);
        }
        if (resourceId > 0) {
            valueAnimator2 = valueAnimator;
            valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        } else {
            valueAnimator2 = valueAnimator;
        }
        typedArray2.recycle();
        if (typedArrayN2 != null) {
            typedArrayN2.recycle();
        }
        return valueAnimator2;
    }

    public static void o(MediaFormat mediaFormat, String str, int i8) {
        if (i8 != -1) {
            mediaFormat.setInteger(str, i8);
        }
    }

    public static int p(p117p0.D d6, int i8, int i9, int i10) {
        H1.d(Math.max(Math.max(i8, i9), i10) <= 31);
        int i11 = (1 << i8) - 1;
        int i12 = (1 << i9) - 1;
        E3.f.d(E3.f.d(i11, i12), 1 << i10);
        if (d6.b() < i8) {
            return -1;
        }
        int i13 = d6.i(i8);
        if (i13 != i11) {
            return i13;
        }
        if (d6.b() < i9) {
            return -1;
        }
        int i14 = d6.i(i9);
        int i15 = i13 + i14;
        if (i14 != i12) {
            return i15;
        }
        if (d6.b() < i10) {
            return -1;
        }
        return i15 + d6.i(i10);
    }

    public static void q(MediaFormat mediaFormat, List list) {
        for (int i8 = 0; i8 < list.size(); i8++) {
            mediaFormat.setByteBuffer(p000a.r.f("csd-", i8), ByteBuffer.wrap((byte[]) list.get(i8)));
        }
    }

    public static void r(p117p0.D d6) {
        d6.u(3);
        d6.u(8);
        boolean zH = d6.h();
        boolean zH2 = d6.h();
        if (zH) {
            d6.u(5);
        }
        if (zH2) {
            d6.u(6);
        }
    }

    public static void s(p117p0.D d6) {
        int i8;
        int i9 = d6.i(2);
        if (i9 == 0) {
            d6.u(6);
            return;
        }
        int iP = p(d6, 5, 8, 16) + 1;
        if (i9 == 1) {
            d6.u(iP * 7);
            return;
        }
        if (i9 == 2) {
            boolean zH = d6.h();
            int i10 = zH ? 1 : 5;
            int i11 = zH ? 7 : 5;
            int i12 = zH ? 8 : 6;
            int i13 = 0;
            while (i13 < iP) {
                if (d6.h()) {
                    d6.u(7);
                    i8 = 0;
                } else {
                    if (d6.i(2) == 3 && d6.i(i11) * i10 != 0) {
                        d6.t();
                    }
                    i8 = d6.i(i12) * i10;
                    if (i8 != 0 && i8 != 180) {
                        d6.t();
                    }
                    d6.t();
                }
                if (i8 != 0 && i8 != 180 && d6.h()) {
                    i13++;
                }
                i13++;
            }
        }
    }

    public static final String t(p185x6.e eVar) {
        Object objN;
        if (eVar instanceof N6.d) {
            return ((N6.d) eVar).toString();
        }
        try {
            objN = eVar + '@' + i(eVar);
        } catch (Throwable th) {
            objN = q0.n(th);
        }
        if (p155t6.e.a(objN) != null) {
            objN = eVar.getClass().getName() + '@' + i(eVar);
        }
        return (String) objN;
    }

    public static Bundle u(Context context, String str) {
        JSONArray jSONArray;
        int i8;
        Object obj;
        SharedPreferences sharedPreferences;
        String str2;
        if (TextUtils.isEmpty(str)) {
            jSONArray = null;
        } else {
            try {
                jSONArray = new JSONArray(str);
            } catch (JSONException e8) {
                p120p3.h.c("JSON parsing error", e8);
                jSONArray = null;
            }
        }
        if (jSONArray == null) {
            return Bundle.EMPTY;
        }
        Bundle bundle = new Bundle();
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i9);
            String strOptString = jSONObjectOptJSONObject.optString("bk");
            String strOptString2 = jSONObjectOptJSONObject.optString("sk");
            int iOptInt = jSONObjectOptJSONObject.optInt("type", -1);
            if (iOptInt == 0) {
                i8 = 1;
            } else if (iOptInt != 1) {
                i8 = iOptInt != 2 ? 0 : 3;
            } else {
                i8 = 2;
            }
            if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2) && i8 != 0) {
                List listS = Xu.j(new C2061tz('/')).s(strOptString2);
                if (listS.size() > 2 || listS.isEmpty()) {
                    obj = null;
                } else {
                    if (listS.size() == 1) {
                        sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                        str2 = (String) listS.get(0);
                    } else {
                        sharedPreferences = context.getSharedPreferences((String) listS.get(0), 0);
                        str2 = (String) listS.get(1);
                    }
                    obj = sharedPreferences.getAll().get(str2);
                }
                if (obj != null) {
                    int i10 = i8 - 1;
                    if (i10 != 0) {
                        if (i10 != 1) {
                            if (obj instanceof Boolean) {
                                bundle.putBoolean(strOptString, ((Boolean) obj).booleanValue());
                            }
                        } else if (obj instanceof Integer) {
                            bundle.putInt(strOptString, ((Integer) obj).intValue());
                        } else if (obj instanceof Long) {
                            bundle.putLong(strOptString, ((Long) obj).longValue());
                        } else if (obj instanceof Float) {
                            bundle.putFloat(strOptString, ((Float) obj).floatValue());
                        }
                    } else if (obj instanceof String) {
                        bundle.putString(strOptString, (String) obj);
                    }
                }
            }
        }
        return bundle;
    }

    public static void v(Context context) {
        J7 j8 = Q7.f15651J5;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && context != null) {
            context.deleteDatabase("OfflineUpload.db");
        }
        try {
            Ty tyF = Ty.f(context);
            Uy uyG = Uy.g(context);
            tyF.g();
            synchronized (Ty.class) {
                tyF.d(true);
            }
            uyG.h();
            if (((Boolean) c3099q.f26627c.a(Q7.f15695P2)).booleanValue()) {
                uyG.f16568f.b("paidv2_publisher_option");
            }
            if (((Boolean) c3099q.f26627c.a(Q7.f15703Q2)).booleanValue()) {
                uyG.f16568f.b("paidv2_user_option");
            }
        } catch (IOException e8) {
            p083k3.l.f25980A.f25987g.i("clearStorageOnIdlessMode", e8);
        }
    }
}
