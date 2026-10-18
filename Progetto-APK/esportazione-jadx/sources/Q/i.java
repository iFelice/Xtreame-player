package Q;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.Editable;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class i implements ActionMode.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ActionMode.Callback f5999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f6000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Class f6001c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Method f6002d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6003e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6004f = false;

    public i(ActionMode.Callback callback, TextView textView) {
        this.f5999a = callback;
        this.f6000b = textView;
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.f5999a.onActionItemClicked(actionMode, menuItem);
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return this.f5999a.onCreateActionMode(actionMode, menu);
    }

    @Override // android.view.ActionMode.Callback
    public final void onDestroyActionMode(ActionMode actionMode) {
        this.f5999a.onDestroyActionMode(actionMode);
    }

    @Override // android.view.ActionMode.Callback
    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        String str;
        TextView textView = this.f6000b;
        Context context = textView.getContext();
        PackageManager packageManager = context.getPackageManager();
        if (!this.f6004f) {
            this.f6004f = true;
            try {
                Class<?> cls = Class.forName("com.android.internal.view.menu.MenuBuilder");
                this.f6001c = cls;
                this.f6002d = cls.getDeclaredMethod("removeItemAt", Integer.TYPE);
                this.f6003e = true;
            } catch (ClassNotFoundException | NoSuchMethodException unused) {
                this.f6001c = null;
                this.f6002d = null;
                this.f6003e = false;
            }
        }
        try {
            Method declaredMethod = (this.f6003e && this.f6001c.isInstance(menu)) ? this.f6002d : menu.getClass().getDeclaredMethod("removeItemAt", Integer.TYPE);
            for (int size = menu.size() - 1; size >= 0; size--) {
                MenuItem item = menu.getItem(size);
                if (item.getIntent() != null && "android.intent.action.PROCESS_TEXT".equals(item.getIntent().getAction())) {
                    declaredMethod.invoke(menu, Integer.valueOf(size));
                }
            }
            ArrayList arrayList = new ArrayList();
            if (context instanceof Activity) {
                for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain"), 0)) {
                    if (!context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                        ActivityInfo activityInfo = resolveInfo.activityInfo;
                        if (activityInfo.exported && ((str = activityInfo.permission) == null || context.checkSelfPermission(str) == 0)) {
                        }
                    }
                    arrayList.add(resolveInfo);
                }
            }
            for (int i8 = 0; i8 < arrayList.size(); i8++) {
                ResolveInfo resolveInfo2 = (ResolveInfo) arrayList.get(i8);
                MenuItem menuItemAdd = menu.add(0, 0, i8 + 100, resolveInfo2.loadLabel(packageManager));
                Intent intentPutExtra = new Intent().setAction("android.intent.action.PROCESS_TEXT").setType("text/plain").putExtra("android.intent.extra.PROCESS_TEXT_READONLY", !((textView instanceof Editable) && textView.onCheckIsTextEditor() && textView.isEnabled()));
                ActivityInfo activityInfo2 = resolveInfo2.activityInfo;
                menuItemAdd.setIntent(intentPutExtra.setClassName(activityInfo2.packageName, activityInfo2.name)).setShowAsAction(1);
            }
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused2) {
        }
        return this.f5999a.onPrepareActionMode(actionMode, menu);
    }
}
