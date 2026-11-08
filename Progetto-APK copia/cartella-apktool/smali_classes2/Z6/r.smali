.class public final LZ6/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/q;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-lt p2, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, LZ6/r;->a:I

    .line 8
    .line 9
    iput p2, p0, LZ6/r;->b:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 1

    .line 1
    iget v0, p0, LZ6/r;->a:I

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p1, p2}, LZ6/r;->c(Ljava/lang/Appendable;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, LZ6/r;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final c(Ljava/lang/Appendable;I)V
    .locals 1

    .line 1
    iget v0, p0, LZ6/r;->b:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, LZ6/C;->b(Ljava/lang/Appendable;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
