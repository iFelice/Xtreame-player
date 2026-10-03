package p039f;

import N.C0276z;
import N.N;
import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.WeakHashMap;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import p031e.a;
import p071j.d;
import p086l.A;
import p086l.C;
import p086l.C3031h0;
import p086l.C3043n0;
import p086l.C3053t;
import p086l.C3055u;
import p086l.C3057v;
import p086l.E;
import p086l.F;
import p086l.J;
import p086l.K;
import p086l.M;
import p086l.W;
import p086l.d1;
import p086l.r;
import p132r.m;

/* JADX INFO: loaded from: classes.dex */
public class O {
    private static final String LOG_TAG = "AppCompatViewInflater";
    private final Object[] mConstructorArgs = new Object[2];
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = {R.attr.onClick};
    private static final int[] sAccessibilityHeading = {R.attr.accessibilityHeading};
    private static final int[] sAccessibilityPaneTitle = {R.attr.accessibilityPaneTitle};
    private static final int[] sScreenReaderFocusable = {R.attr.screenReaderFocusable};
    private static final String[] sClassPrefixList = {"android.widget.", "android.view.", "android.webkit."};
    private static final m sConstructorMap = new m();

    public final View a(Context context, String str, String str2) {
        String strConcat;
        m mVar = sConstructorMap;
        Constructor constructor = (Constructor) mVar.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    strConcat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                strConcat = str;
            }
            constructor = Class.forName(strConcat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(sConstructorSignature);
            mVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.mConstructorArgs);
    }

    public final void b(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    public r createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new r(context, attributeSet);
    }

    public C3053t createButton(Context context, AttributeSet attributeSet) {
        return new C3053t(context, attributeSet, pe.hf.black20.R.attr.buttonStyle);
    }

    public C3055u createCheckBox(Context context, AttributeSet attributeSet) {
        return new C3055u(context, attributeSet);
    }

    public C3057v createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new C3057v(context, attributeSet);
    }

    public A createEditText(Context context, AttributeSet attributeSet) {
        return new A(context, attributeSet);
    }

    public C createImageButton(Context context, AttributeSet attributeSet) {
        return new C(context, attributeSet, pe.hf.black20.R.attr.imageButtonStyle);
    }

    public E createImageView(Context context, AttributeSet attributeSet) {
        return new E(context, attributeSet, 0);
    }

    public F createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new F(context, attributeSet);
    }

    public J createRadioButton(Context context, AttributeSet attributeSet) {
        return new J(context, attributeSet);
    }

    public K createRatingBar(Context context, AttributeSet attributeSet) {
        return new K(context, attributeSet);
    }

    public M createSeekBar(Context context, AttributeSet attributeSet) {
        return new M(context, attributeSet);
    }

    public W createSpinner(Context context, AttributeSet attributeSet) {
        return new W(context, attributeSet);
    }

    public C3031h0 createTextView(Context context, AttributeSet attributeSet) {
        return new C3031h0(context, attributeSet);
    }

    public C3043n0 createToggleButton(Context context, AttributeSet attributeSet) {
        return new C3043n0(context, attributeSet);
    }

    public View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0057  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final View createView(View view, String str, Context context, AttributeSet attributeSet, boolean z7, boolean z8, boolean z9, boolean z10) {
        View viewCreateRatingBar;
        Context context2 = (!z7 || view == null) ? context : view.getContext();
        byte b8 = 4;
        if (z8 || z9) {
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, a.f24710y, 0, 0);
            int resourceId = z8 ? typedArrayObtainStyledAttributes.getResourceId(0, 0) : 0;
            if (z9 && resourceId == 0 && (resourceId = typedArrayObtainStyledAttributes.getResourceId(4, 0)) != 0) {
                Log.i(LOG_TAG, "app:theme is now deprecated. Please move to using android:theme instead.");
            }
            typedArrayObtainStyledAttributes.recycle();
            if (resourceId != 0 && (!(context2 instanceof d) || ((d) context2).f25597a != resourceId)) {
                context2 = new d(context2, resourceId);
            }
        }
        if (z10) {
            d1.a(context2);
        }
        str.getClass();
        switch (str.hashCode()) {
            case -1946472170:
                if (!str.equals("RatingBar")) {
                    b8 = -1;
                } else {
                    b8 = 0;
                }
                break;
            case -1455429095:
                if (!str.equals("CheckedTextView")) {
                    b8 = -1;
                } else {
                    b8 = 1;
                }
                break;
            case -1346021293:
                if (!str.equals("MultiAutoCompleteTextView")) {
                    b8 = -1;
                } else {
                    b8 = 2;
                }
                break;
            case -938935918:
                if (!str.equals("TextView")) {
                    b8 = -1;
                } else {
                    b8 = 3;
                }
                break;
            case -937446323:
                if (!str.equals("ImageButton")) {
                    b8 = -1;
                }
                break;
            case -658531749:
                if (!str.equals("SeekBar")) {
                    b8 = -1;
                } else {
                    b8 = 5;
                }
                break;
            case -339785223:
                if (!str.equals("Spinner")) {
                    b8 = -1;
                } else {
                    b8 = 6;
                }
                break;
            case 776382189:
                if (!str.equals("RadioButton")) {
                    b8 = -1;
                } else {
                    b8 = 7;
                }
                break;
            case 799298502:
                if (!str.equals("ToggleButton")) {
                    b8 = -1;
                } else {
                    b8 = 8;
                }
                break;
            case 1125864064:
                if (!str.equals("ImageView")) {
                    b8 = -1;
                } else {
                    b8 = 9;
                }
                break;
            case 1413872058:
                if (!str.equals("AutoCompleteTextView")) {
                    b8 = -1;
                } else {
                    b8 = 10;
                }
                break;
            case 1601505219:
                if (!str.equals("CheckBox")) {
                    b8 = -1;
                } else {
                    b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                }
                break;
            case 1666676343:
                if (!str.equals("EditText")) {
                    b8 = -1;
                } else {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                }
                break;
            case 2001146706:
                if (!str.equals("Button")) {
                    b8 = -1;
                } else {
                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                }
                break;
            default:
                b8 = -1;
                break;
        }
        switch (b8) {
            case 0:
                viewCreateRatingBar = createRatingBar(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 1:
                viewCreateRatingBar = createCheckedTextView(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 2:
                viewCreateRatingBar = createMultiAutoCompleteTextView(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 3:
                viewCreateRatingBar = createTextView(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 4:
                viewCreateRatingBar = createImageButton(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 5:
                viewCreateRatingBar = createSeekBar(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 6:
                viewCreateRatingBar = createSpinner(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 7:
                viewCreateRatingBar = createRadioButton(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 8:
                viewCreateRatingBar = createToggleButton(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 9:
                viewCreateRatingBar = createImageView(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 10:
                viewCreateRatingBar = createAutoCompleteTextView(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 11:
                viewCreateRatingBar = createCheckBox(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 12:
                viewCreateRatingBar = createEditText(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            case 13:
                viewCreateRatingBar = createButton(context2, attributeSet);
                b(viewCreateRatingBar, str);
                break;
            default:
                viewCreateRatingBar = createView(context2, str, attributeSet);
                break;
        }
        if (viewCreateRatingBar == null && context != context2) {
            viewCreateRatingBar = null;
            if (str.equals("view")) {
                str = attributeSet.getAttributeValue(null, "class");
            }
            try {
                Object[] objArr = this.mConstructorArgs;
                objArr[0] = context2;
                objArr[1] = attributeSet;
                if (-1 == str.indexOf(46)) {
                    int i8 = 0;
                    while (true) {
                        String[] strArr = sClassPrefixList;
                        if (i8 < strArr.length) {
                            View viewA = a(context2, str, strArr[i8]);
                            if (viewA != null) {
                                Object[] objArr2 = this.mConstructorArgs;
                                objArr2[0] = null;
                                objArr2[1] = null;
                                viewCreateRatingBar = viewA;
                            } else {
                                i8++;
                            }
                        } else {
                            Object[] objArr3 = this.mConstructorArgs;
                            objArr3[0] = null;
                            objArr3[1] = null;
                        }
                    }
                } else {
                    View viewA2 = a(context2, str, null);
                    Object[] objArr4 = this.mConstructorArgs;
                    objArr4[0] = null;
                    objArr4[1] = null;
                    viewCreateRatingBar = viewA2;
                }
            } catch (Exception unused) {
                Object[] objArr5 = this.mConstructorArgs;
                objArr5[0] = viewCreateRatingBar;
                objArr5[1] = viewCreateRatingBar;
            } catch (Throwable th) {
                Object[] objArr6 = this.mConstructorArgs;
                objArr6[0] = viewCreateRatingBar;
                objArr6[1] = viewCreateRatingBar;
                throw th;
            }
        }
        if (viewCreateRatingBar != null) {
            Context context3 = viewCreateRatingBar.getContext();
            if ((context3 instanceof ContextWrapper) && viewCreateRatingBar.hasOnClickListeners()) {
                TypedArray typedArrayObtainStyledAttributes2 = context3.obtainStyledAttributes(attributeSet, sOnClickAttrs);
                String string = typedArrayObtainStyledAttributes2.getString(0);
                if (string != null) {
                    viewCreateRatingBar.setOnClickListener(new N(viewCreateRatingBar, string));
                }
                typedArrayObtainStyledAttributes2.recycle();
            }
            if (Build.VERSION.SDK_INT <= 28) {
                TypedArray typedArrayObtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, sAccessibilityHeading);
                if (typedArrayObtainStyledAttributes3.hasValue(0)) {
                    boolean z11 = typedArrayObtainStyledAttributes3.getBoolean(0, false);
                    WeakHashMap weakHashMap = N.f4843a;
                    new C0276z(pe.hf.black20.R.id.tag_accessibility_heading, 3).f(viewCreateRatingBar, Boolean.valueOf(z11));
                }
                typedArrayObtainStyledAttributes3.recycle();
                TypedArray typedArrayObtainStyledAttributes4 = context2.obtainStyledAttributes(attributeSet, sAccessibilityPaneTitle);
                if (typedArrayObtainStyledAttributes4.hasValue(0)) {
                    N.n(viewCreateRatingBar, typedArrayObtainStyledAttributes4.getString(0));
                }
                typedArrayObtainStyledAttributes4.recycle();
                TypedArray typedArrayObtainStyledAttributes5 = context2.obtainStyledAttributes(attributeSet, sScreenReaderFocusable);
                if (typedArrayObtainStyledAttributes5.hasValue(0)) {
                    boolean z12 = typedArrayObtainStyledAttributes5.getBoolean(0, false);
                    WeakHashMap weakHashMap2 = N.f4843a;
                    new C0276z(pe.hf.black20.R.id.tag_screen_reader_focusable, 0).f(viewCreateRatingBar, Boolean.valueOf(z12));
                }
                typedArrayObtainStyledAttributes5.recycle();
            }
        }
        return viewCreateRatingBar;
    }
}
