.class public final Lk/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic G:Lk/y;


# direct methods
.method public constructor <init>(Lk/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/x;->G:Lk/y;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/x;->G:Lk/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lk/y;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
