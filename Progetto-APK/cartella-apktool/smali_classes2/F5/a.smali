.class public final LF5/a;
.super LF5/d;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public constructor <init>(ILw5/a;)V
    .locals 0

    .line 1
    iput p1, p0, LF5/a;->c:I

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lf/H;-><init>(Lw5/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final u(ILjava/lang/StringBuilder;)V
    .locals 1

    .line 1
    iget v0, p0, LF5/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x2710

    .line 7
    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    const-string p1, "(3202)"

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "(3203)"

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :pswitch_0
    const-string p1, "(3103)"

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final v(I)I
    .locals 1

    .line 1
    iget v0, p0, LF5/a;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x2710

    .line 7
    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    add-int/lit16 p1, p1, -0x2710

    .line 12
    .line 13
    :goto_0
    :pswitch_0
    return p1

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
