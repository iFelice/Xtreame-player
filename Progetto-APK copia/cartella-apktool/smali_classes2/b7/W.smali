.class public final Lb7/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/MultiScreenActivityEXO;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/W;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/W;->H:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget p1, p0, Lb7/W;->G:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/W;->H:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p1, "p4"

    .line 9
    .line 10
    iput-object p1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->N0:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->b1:Landroid/view/GestureDetector;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :pswitch_0
    const-string p1, "p3"

    .line 20
    .line 21
    iput-object p1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->N0:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->b1:Landroid/view/GestureDetector;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :pswitch_1
    const-string p1, "p2"

    .line 31
    .line 32
    iput-object p1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->N0:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->b1:Landroid/view/GestureDetector;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :pswitch_2
    const-string p1, "p1"

    .line 42
    .line 43
    iput-object p1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->N0:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p1, v0, Lpe/hf/black20/MultiScreenActivityEXO;->b1:Landroid/view/GestureDetector;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
