package Y;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class A implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final K f7692G;

    public A(K k8) {
        this.f7692G = k8;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        P pF;
        boolean zEquals = C0412y.class.getName().equals(str);
        K k8 = this.f7692G;
        if (zEquals) {
            return new C0412y(context, attributeSet, k8);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, X.a.f7503a);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        String string = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue != null) {
            try {
                if (AbstractComponentCallbacksC0406s.class.isAssignableFrom(F.b(context.getClassLoader(), attributeValue))) {
                    int id = view != null ? view.getId() : 0;
                    if (id == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sA = resourceId != -1 ? k8.A(resourceId) : null;
                    if (abstractComponentCallbacksC0406sA == null && string != null) {
                        abstractComponentCallbacksC0406sA = k8.B(string);
                    }
                    if (abstractComponentCallbacksC0406sA == null && id != -1) {
                        abstractComponentCallbacksC0406sA = k8.A(id);
                    }
                    if (abstractComponentCallbacksC0406sA == null) {
                        F fD = k8.D();
                        context.getClassLoader();
                        abstractComponentCallbacksC0406sA = fD.a(attributeValue);
                        abstractComponentCallbacksC0406sA.f7944T = true;
                        abstractComponentCallbacksC0406sA.f7953c0 = resourceId != 0 ? resourceId : id;
                        abstractComponentCallbacksC0406sA.f7954d0 = id;
                        abstractComponentCallbacksC0406sA.f7955e0 = string;
                        abstractComponentCallbacksC0406sA.f7945U = true;
                        abstractComponentCallbacksC0406sA.f7949Y = k8;
                        C0408u c0408u = k8.f7742u;
                        abstractComponentCallbacksC0406sA.f7950Z = c0408u;
                        Context context2 = c0408u.f7980N;
                        abstractComponentCallbacksC0406sA.f7961k0 = true;
                        if ((c0408u != null ? c0408u.f7979M : null) != null) {
                            abstractComponentCallbacksC0406sA.f7961k0 = true;
                        }
                        pF = k8.a(abstractComponentCallbacksC0406sA);
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "Fragment " + abstractComponentCallbacksC0406sA + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else if (!abstractComponentCallbacksC0406sA.f7945U) {
                        abstractComponentCallbacksC0406sA.f7945U = true;
                        abstractComponentCallbacksC0406sA.f7949Y = k8;
                        C0408u c0408u2 = k8.f7742u;
                        abstractComponentCallbacksC0406sA.f7950Z = c0408u2;
                        Context context3 = c0408u2.f7980N;
                        abstractComponentCallbacksC0406sA.f7961k0 = true;
                        if ((c0408u2 != null ? c0408u2.f7979M : null) != null) {
                            abstractComponentCallbacksC0406sA.f7961k0 = true;
                        }
                        pF = k8.f(abstractComponentCallbacksC0406sA);
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "Retained Fragment " + abstractComponentCallbacksC0406sA + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
                    }
                    ViewGroup viewGroup = (ViewGroup) view;
                    Z.b bVar = Z.c.f8208a;
                    Z.d dVar = new Z.d(abstractComponentCallbacksC0406sA, viewGroup, 0);
                    Z.c.c(dVar);
                    Z.b bVarA = Z.c.a(abstractComponentCallbacksC0406sA);
                    if (bVarA.f8206a.contains(Z.a.f8200J) && Z.c.e(bVarA, abstractComponentCallbacksC0406sA.getClass(), Z.d.class)) {
                        Z.c.b(bVarA, dVar);
                    }
                    abstractComponentCallbacksC0406sA.f7962l0 = viewGroup;
                    pF.k();
                    pF.j();
                    View view2 = abstractComponentCallbacksC0406sA.f7963m0;
                    if (view2 != null) {
                        if (resourceId != 0) {
                            view2.setId(resourceId);
                        }
                        if (abstractComponentCallbacksC0406sA.f7963m0.getTag() == null) {
                            abstractComponentCallbacksC0406sA.f7963m0.setTag(string);
                        }
                        abstractComponentCallbacksC0406sA.f7963m0.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC0413z(this, pF));
                        return abstractComponentCallbacksC0406sA.f7963m0;
                    }
                    throw new IllegalStateException(p000a.r.g("Fragment ", attributeValue, " did not create a view."));
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        return null;
    }
}
