.class public final LF5/j;
.super Lq0/e;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lq0/e;-><init>(II)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, LF5/j;->e:Z

    .line 4
    iput p2, p0, LF5/j;->d:I

    .line 5
    iput-object p3, p0, LF5/j;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-direct {p0, p1, v0}, Lq0/e;-><init>(II)V

    .line 8
    iput-object p2, p0, LF5/j;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, LF5/j;->e:Z

    .line 10
    iput p1, p0, LF5/j;->d:I

    return-void
.end method
