.class public final LD1/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LK/b;

.field public static final f:LK/b;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LK/b;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1}, LK/b;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LD1/J;->e:LK/b;

    .line 9
    .line 10
    new-instance v0, LK/b;

    .line 11
    .line 12
    const/16 v1, 0x16

    .line 13
    .line 14
    invoke-direct {v0, v1}, LK/b;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, LD1/J;->f:LK/b;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LD1/J;->a:I

    .line 5
    .line 6
    iput p2, p0, LD1/J;->b:I

    .line 7
    .line 8
    iput-object p3, p0, LD1/J;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, LD1/J;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
