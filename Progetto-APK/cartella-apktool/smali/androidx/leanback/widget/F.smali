.class public final Landroidx/leanback/widget/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic G:Ljava/lang/Runnable;

.field public final synthetic H:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar;Landroidx/leanback/widget/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/F;->H:Landroidx/leanback/widget/SearchBar;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/leanback/widget/F;->G:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/F;->H:Landroidx/leanback/widget/SearchBar;

    .line 2
    .line 3
    iget-boolean p2, p1, Landroidx/leanback/widget/SearchBar;->e0:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p1, Landroidx/leanback/widget/SearchBar;->N:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object p3, p0, Landroidx/leanback/widget/F;->G:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->N:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
