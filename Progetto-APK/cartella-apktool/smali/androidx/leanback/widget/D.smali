.class public final Landroidx/leanback/widget/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public synthetic constructor <init>(Landroidx/leanback/widget/SearchBar;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/leanback/widget/D;->a:I

    iput-object p1, p0, Landroidx/leanback/widget/D;->b:Landroidx/leanback/widget/SearchBar;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iget v0, p0, Landroidx/leanback/widget/D;->a:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/D;->b:Landroidx/leanback/widget/SearchBar;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v0, v1, Landroidx/leanback/widget/SearchBar;->G:Landroidx/leanback/widget/SearchEditText;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, v1, Landroidx/leanback/widget/SearchBar;->O:Landroid/view/inputmethod/InputMethodManager;

    .line 18
    .line 19
    invoke-virtual {v2, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 20
    .line 21
    .line 22
    iget-boolean v0, v1, Landroidx/leanback/widget/SearchBar;->P:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/leanback/widget/SearchBar;->a()V

    .line 27
    .line 28
    .line 29
    iput-boolean p1, v1, Landroidx/leanback/widget/SearchBar;->P:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Landroidx/leanback/widget/SearchBar;->b()V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    invoke-virtual {v1, p2}, Landroidx/leanback/widget/SearchBar;->d(Z)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-object p1, v1, Landroidx/leanback/widget/SearchBar;->N:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v0, Landroidx/leanback/widget/E;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/E;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, v1, Landroidx/leanback/widget/SearchBar;->G:Landroidx/leanback/widget/SearchEditText;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v2, v1, Landroidx/leanback/widget/SearchBar;->O:Landroid/view/inputmethod/InputMethodManager;

    .line 60
    .line 61
    invoke-virtual {v2, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v1, p2}, Landroidx/leanback/widget/SearchBar;->d(Z)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
