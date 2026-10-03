.class public final LR1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final G:I

.field public final H:I

.field public final I:Ljava/lang/String;

.field public final J:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LR1/c;->G:I

    .line 5
    .line 6
    iput p2, p0, LR1/c;->H:I

    .line 7
    .line 8
    iput-object p3, p0, LR1/c;->I:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, LR1/c;->J:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, LR1/c;

    .line 2
    .line 3
    const-string v0, "other"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, LR1/c;->G:I

    .line 9
    .line 10
    iget v1, p1, LR1/c;->G:I

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget v0, p0, LR1/c;->H:I

    .line 16
    .line 17
    iget p1, p1, LR1/c;->H:I

    .line 18
    .line 19
    sub-int/2addr v0, p1

    .line 20
    :cond_0
    return v0
.end method
