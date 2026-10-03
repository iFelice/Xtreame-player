.class public final LZ6/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/q;


# instance fields
.field public final synthetic a:I

.field public final b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LZ6/z;->a:I

    .line 5
    .line 6
    iput p1, p0, LZ6/z;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 2

    .line 1
    iget v0, p0, LZ6/z;->a:I

    .line 2
    .line 3
    iget v1, p0, LZ6/z;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p0, p1, p2}, LZ6/z;->c(Ljava/lang/Appendable;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0, p1, p2}, LZ6/z;->c(Ljava/lang/Appendable;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, LZ6/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    return v0

    .line 8
    :pswitch_0
    const/4 v0, 0x2

    .line 9
    return v0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Appendable;I)V
    .locals 2

    .line 1
    iget v0, p0, LZ6/z;->a:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    if-ge p2, v0, :cond_0

    .line 11
    .line 12
    add-int/lit8 p2, p2, 0x30

    .line 13
    .line 14
    int-to-char p2, p2

    .line 15
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-ge p2, v1, :cond_1

    .line 20
    .line 21
    invoke-static {p1, p2}, LZ6/C;->a(Ljava/lang/Appendable;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x1

    .line 26
    invoke-static {p1, p2, v0}, LZ6/C;->b(Ljava/lang/Appendable;II)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :pswitch_0
    if-ge p2, v1, :cond_2

    .line 31
    .line 32
    invoke-static {p1, p2}, LZ6/C;->a(Ljava/lang/Appendable;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/4 v0, 0x2

    .line 37
    invoke-static {p1, p2, v0}, LZ6/C;->b(Ljava/lang/Appendable;II)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
