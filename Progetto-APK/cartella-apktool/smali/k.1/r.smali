.class public final Lk/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public a:Lf/S;

.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Lk/v;


# direct methods
.method public constructor <init>(Lk/v;Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/r;->c:Lk/v;

    .line 5
    .line 6
    iput-object p2, p0, Lk/r;->b:Landroid/view/ActionProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lk/r;->a:Lf/S;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lf/S;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lk/q;

    .line 8
    .line 9
    iget-object p1, p1, Lk/q;->n:Lk/o;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p1, Lk/o;->h:Z

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lk/o;->p(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
