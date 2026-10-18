.class public final Lb7/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LO1/c0;

.field public final synthetic I:LO1/C;


# direct methods
.method public synthetic constructor <init>(LO1/C;LO1/c0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lb7/D0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/D0;->I:LO1/C;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/D0;->H:LO1/c0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    .line 1
    iget v0, p0, Lb7/D0;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lb7/D0;->I:LO1/C;

    .line 4
    .line 5
    iget-object v2, p0, Lb7/D0;->H:LO1/c0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lb7/P0;

    .line 11
    .line 12
    iget-object v0, v2, Lb7/P0;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 19
    .line 20
    .line 21
    check-cast v1, LD1/q;

    .line 22
    .line 23
    iget-object v0, v1, LD1/q;->M:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lb7/S0;

    .line 26
    .line 27
    sget v1, Lb7/S0;->z1:I

    .line 28
    .line 29
    invoke-virtual {v0}, Lb7/S0;->Y()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    check-cast v2, Lb7/C0;

    .line 34
    .line 35
    iget-object v0, v2, Lb7/C0;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 42
    .line 43
    .line 44
    check-cast v1, Lb7/E0;

    .line 45
    .line 46
    iget-object v0, v1, Lb7/E0;->L:Lb7/I0;

    .line 47
    .line 48
    sget v1, Lb7/I0;->A1:I

    .line 49
    .line 50
    invoke-virtual {v0}, Lb7/I0;->V()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
