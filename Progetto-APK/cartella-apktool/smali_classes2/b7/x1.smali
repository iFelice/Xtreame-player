.class public final Lb7/x1;
.super LO1/P;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lb7/x1;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    iget v0, p0, Lb7/x1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :pswitch_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 20
    .line 21
    :goto_1
    return-void

    .line 22
    :pswitch_1
    if-nez p1, :cond_2

    .line 23
    .line 24
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    sget-object p1, Lpe/hf/black20/ORPlayerMainActivity;->THEME:Ljava/lang/String;

    .line 28
    .line 29
    :goto_2
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
