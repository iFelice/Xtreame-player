package p079k;

import I.a;
import I.b;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import p132r.m;

/* JADX INFO: loaded from: classes.dex */
public class D extends AbstractC3012d implements Menu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f25725d;

    public D(Context context, a aVar) {
        super(context);
        if (aVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f25725d = aVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return j(((o) this.f25725d).add(charSequence));
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i8, int i9, int i10, ComponentName componentName, Intent[] intentArr, Intent intent, int i11, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = ((o) this.f25725d).addIntentOptions(i8, i9, i10, componentName, intentArr, intent, i11, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i12 = 0; i12 < length; i12++) {
                menuItemArr[i12] = j(menuItemArr2[i12]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return ((o) this.f25725d).addSubMenu(charSequence);
    }

    @Override // android.view.Menu
    public final void clear() {
        m mVar = (m) this.f25766b;
        if (mVar != null) {
            mVar.clear();
        }
        m mVar2 = (m) this.f25767c;
        if (mVar2 != null) {
            mVar2.clear();
        }
        ((o) this.f25725d).clear();
    }

    @Override // android.view.Menu
    public final void close() {
        ((o) this.f25725d).close();
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i8) {
        return j(((o) this.f25725d).findItem(i8));
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i8) {
        return j(((o) this.f25725d).getItem(i8));
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        return ((o) this.f25725d).hasVisibleItems();
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i8, KeyEvent keyEvent) {
        return ((o) this.f25725d).isShortcutKey(i8, keyEvent);
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i8, int i9) {
        return ((o) this.f25725d).performIdentifierAction(i8, i9);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i8, KeyEvent keyEvent, int i9) {
        return ((o) this.f25725d).performShortcut(i8, keyEvent, i9);
    }

    @Override // android.view.Menu
    public final void removeGroup(int i8) {
        if (((m) this.f25766b) != null) {
            int i9 = 0;
            while (true) {
                m mVar = (m) this.f25766b;
                if (i9 >= mVar.f29684I) {
                    break;
                }
                if (((b) mVar.f(i9)).getGroupId() == i8) {
                    ((m) this.f25766b).h(i9);
                    i9--;
                }
                i9++;
            }
        }
        ((o) this.f25725d).removeGroup(i8);
    }

    @Override // android.view.Menu
    public final void removeItem(int i8) {
        if (((m) this.f25766b) != null) {
            int i9 = 0;
            while (true) {
                m mVar = (m) this.f25766b;
                if (i9 >= mVar.f29684I) {
                    break;
                }
                if (((b) mVar.f(i9)).getItemId() == i8) {
                    ((m) this.f25766b).h(i9);
                    break;
                }
                i9++;
            }
        }
        ((o) this.f25725d).removeItem(i8);
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i8, boolean z7, boolean z8) {
        ((o) this.f25725d).setGroupCheckable(i8, z7, z8);
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i8, boolean z7) {
        ((o) this.f25725d).setGroupEnabled(i8, z7);
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i8, boolean z7) {
        ((o) this.f25725d).setGroupVisible(i8, z7);
    }

    @Override // android.view.Menu
    public final void setQwertyMode(boolean z7) {
        this.f25725d.setQwertyMode(z7);
    }

    @Override // android.view.Menu
    public final int size() {
        return ((o) this.f25725d).size();
    }

    @Override // android.view.Menu
    public final MenuItem add(int i8) {
        return j(((o) this.f25725d).add(i8));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i8) {
        return ((o) this.f25725d).addSubMenu(i8);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i8, int i9, int i10, CharSequence charSequence) {
        return j(((o) this.f25725d).add(i8, i9, i10, charSequence));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i8, int i9, int i10, CharSequence charSequence) {
        return ((o) this.f25725d).addSubMenu(i8, i9, i10, charSequence);
    }

    @Override // android.view.Menu
    public final MenuItem add(int i8, int i9, int i10, int i11) {
        return j(((o) this.f25725d).add(i8, i9, i10, i11));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i8, int i9, int i10, int i11) {
        return ((o) this.f25725d).addSubMenu(i8, i9, i10, i11);
    }
}
