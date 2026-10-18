.class public final synthetic LD1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:LD1/n;

.field public final synthetic H:I


# direct methods
.method public synthetic constructor <init>(LD1/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LD1/m;->G:LD1/n;

    .line 5
    .line 6
    iput p2, p0, LD1/m;->H:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, LD1/m;->G:LD1/n;

    .line 2
    .line 3
    iget v0, p1, LD1/n;->K:I

    .line 4
    .line 5
    iget v1, p0, LD1/m;->H:I

    .line 6
    .line 7
    iget-object v2, p1, LD1/n;->L:LD1/v;

    .line 8
    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, LD1/n;->J:[F

    .line 12
    .line 13
    aget p1, p1, v1

    .line 14
    .line 15
    invoke-static {v2, p1}, LD1/v;->b(LD1/v;F)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, v2, LD1/v;->W:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
