.class public Lcom/ies_net/artemis/ArtemisVideoView;
.super Landroid/view/SurfaceView;
.source "ArtemisVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_RESUME:I = 0x7

.field private static final STATE_SUSPEND:I = 0x6

.field private static final STATE_SUSPEND_UNSUPPORTED:I = 0x8


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mLength:J

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOffset:J

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStateWhenSuspended:I

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const-string v0, "VideoView"

    .line 54
    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 83
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 87
    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 300
    new-instance v0, Lcom/ies_net/artemis/ArtemisVideoView$1;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisVideoView$1;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 311
    new-instance v0, Lcom/ies_net/artemis/ArtemisVideoView$2;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisVideoView$2;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 374
    new-instance v0, Lcom/ies_net/artemis/ArtemisVideoView$3;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisVideoView$3;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 388
    new-instance v0, Lcom/ies_net/artemis/ArtemisVideoView$4;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisVideoView$4;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 445
    new-instance v0, Lcom/ies_net/artemis/ArtemisVideoView$5;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisVideoView$5;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 487
    new-instance v0, Lcom/ies_net/artemis/ArtemisVideoView$6;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisVideoView$6;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 106
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lcom/ies_net/artemis/ArtemisVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mContext:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "VideoView"

    .line 54
    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 82
    iput p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 83
    iput p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    const/4 p2, 0x0

    .line 86
    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 87
    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 300
    new-instance p2, Lcom/ies_net/artemis/ArtemisVideoView$1;

    invoke-direct {p2, p0}, Lcom/ies_net/artemis/ArtemisVideoView$1;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 311
    new-instance p2, Lcom/ies_net/artemis/ArtemisVideoView$2;

    invoke-direct {p2, p0}, Lcom/ies_net/artemis/ArtemisVideoView$2;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 374
    new-instance p2, Lcom/ies_net/artemis/ArtemisVideoView$3;

    invoke-direct {p2, p0}, Lcom/ies_net/artemis/ArtemisVideoView$3;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 388
    new-instance p2, Lcom/ies_net/artemis/ArtemisVideoView$4;

    invoke-direct {p2, p0}, Lcom/ies_net/artemis/ArtemisVideoView$4;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 445
    new-instance p2, Lcom/ies_net/artemis/ArtemisVideoView$5;

    invoke-direct {p2, p0}, Lcom/ies_net/artemis/ArtemisVideoView$5;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 487
    new-instance p2, Lcom/ies_net/artemis/ArtemisVideoView$6;

    invoke-direct {p2, p0}, Lcom/ies_net/artemis/ArtemisVideoView$6;-><init>(Lcom/ies_net/artemis/ArtemisVideoView;)V

    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 120
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mContext:Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$000(Lcom/ies_net/artemis/ArtemisVideoView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$002(Lcom/ies_net/artemis/ArtemisVideoView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/ies_net/artemis/ArtemisVideoView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcom/ies_net/artemis/ArtemisVideoView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$1002(Lcom/ies_net/artemis/ArtemisVideoView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/ies_net/artemis/ArtemisVideoView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/ies_net/artemis/ArtemisVideoView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$1102(Lcom/ies_net/artemis/ArtemisVideoView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/ies_net/artemis/ArtemisVideoView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$1202(Lcom/ies_net/artemis/ArtemisVideoView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ies_net/artemis/ArtemisVideoView;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/ies_net/artemis/ArtemisVideoView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/ies_net/artemis/ArtemisVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/ies_net/artemis/ArtemisVideoView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/ies_net/artemis/ArtemisVideoView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    return p0
.end method

.method static synthetic access$2000(Lcom/ies_net/artemis/ArtemisVideoView;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/ies_net/artemis/ArtemisVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/ies_net/artemis/ArtemisVideoView;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$302(Lcom/ies_net/artemis/ArtemisVideoView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Lcom/ies_net/artemis/ArtemisVideoView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Lcom/ies_net/artemis/ArtemisVideoView;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$600(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ies_net/artemis/ArtemisVideoView;)Landroid/widget/MediaController;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ies_net/artemis/ArtemisVideoView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method private attachMediaController()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 293
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private initVideoView()V
    .locals 3

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVideoWidth:I

    .line 177
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVideoHeight:I

    .line 178
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 179
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, 0x1

    .line 180
    invoke-virtual {p0, v1}, Lcom/ies_net/artemis/ArtemisVideoView;->setFocusable(Z)V

    .line 181
    invoke-virtual {p0, v1}, Lcom/ies_net/artemis/ArtemisVideoView;->setFocusableInTouchMode(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->requestFocus()Z

    .line 183
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 184
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 700
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private openVideo()V
    .locals 12

    const-string v0, "Unable to open content: "

    .line 231
    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 238
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "command"

    const-string v3, "pause"

    .line 239
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0, v1}, Lcom/ies_net/artemis/ArtemisVideoView;->release(Z)V

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 246
    :try_start_0
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 247
    iget-object v5, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 248
    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 249
    iput v3, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mDuration:I

    .line 250
    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 251
    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 252
    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 253
    iput v1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentBufferPercentage:I

    .line 254
    iget-object v6, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mFd:Ljava/io/FileDescriptor;

    iget-wide v8, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mOffset:J

    iget-wide v10, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mLength:J

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 256
    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 257
    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 258
    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v5, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVolume:F

    invoke-virtual {v4, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 259
    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 260
    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 263
    iput v2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 264
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    .line 273
    iget-object v5, p0, Lcom/ies_net/artemis/ArtemisVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    iput v3, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 276
    iput v3, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    .line 277
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3, v2, v1}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :catch_1
    move-exception v4

    .line 266
    iget-object v5, p0, Lcom/ies_net/artemis/ArtemisVideoView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    iput v3, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 269
    iput v3, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    .line 270
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v3, v2, v1}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private release(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cleartargetstate"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 541
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 543
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 545
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 707
    iget-boolean v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 715
    iget-boolean v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 694
    iget v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 673
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 661
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mDuration:I

    if-lez v0, :cond_0

    return v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mDuration:I

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 668
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mDuration:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 689
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 575
    :goto_0
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_5

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_3

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x56

    if-ne p1, v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 587
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->pause()V

    .line 589
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_3

    .line 591
    :cond_2
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_3

    .line 578
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 579
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->pause()V

    .line 580
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    goto :goto_2

    .line 582
    :cond_4
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->start()V

    .line 583
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    :goto_2
    return v0

    .line 595
    :cond_5
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 127
    iget v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/ies_net/artemis/ArtemisVideoView;->getDefaultSize(II)I

    move-result p1

    .line 128
    iget v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/ies_net/artemis/ArtemisVideoView;->getDefaultSize(II)I

    move-result p2

    .line 129
    iget v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVideoWidth:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVideoHeight:I

    if-lez v1, :cond_1

    mul-int v2, v0, p2

    mul-int v3, p1, v1

    if-le v2, v3, :cond_0

    mul-int v1, v1, p1

    .line 132
    div-int p2, v1, v0

    goto :goto_0

    :cond_0
    mul-int v2, v0, p2

    mul-int v3, p1, v1

    if-ge v2, v3, :cond_1

    mul-int v0, v0, p2

    .line 135
    div-int p1, v0, v1

    .line 143
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ies_net/artemis/ArtemisVideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 552
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz p1, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 560
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz p1, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->toggleMediaControlsVisiblity()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 2

    .line 615
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 618
    iput v1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 621
    :cond_0
    iput v1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "desiredSize",
            "measureSpec"
        }
    .end annotation

    .line 148
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 149
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public resume()V
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x6

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    .line 641
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    if-ne v2, v1, :cond_1

    .line 645
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 647
    iget v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mStateWhenSuspended:I

    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 648
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    return-void

    .line 654
    :cond_1
    iget v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 655
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->openVideo()V

    :cond_2
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msec"
        }
    .end annotation

    .line 680
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 682
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 684
    :cond_0
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 287
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->attachMediaController()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 471
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 484
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 460
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoSource(Ljava/io/FileDescriptor;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fd",
            "offset",
            "length",
            "volume"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mFd:Ljava/io/FileDescriptor;

    .line 189
    iput-wide p2, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mOffset:J

    .line 190
    iput-wide p4, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mLength:J

    const/16 p1, 0x3e8

    if-lt p6, p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 191
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVolume:F

    goto :goto_0

    :cond_0
    if-gtz p6, :cond_1

    const/4 p1, 0x0

    .line 192
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVolume:F

    goto :goto_0

    :cond_1
    int-to-float p1, p6

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 193
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mVolume:F

    :goto_0
    const/4 p1, 0x0

    .line 194
    iput p1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mSeekWhenPrepared:I

    .line 195
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->openVideo()V

    .line 196
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->requestLayout()V

    .line 197
    invoke-virtual {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 607
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 609
    iput v1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 611
    :cond_0
    iput v1, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 223
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 226
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .line 625
    invoke-direct {p0}, Lcom/ies_net/artemis/ArtemisVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 628
    iget v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mStateWhenSuspended:I

    const/4 v0, 0x6

    .line 629
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mCurrentState:I

    .line 630
    iput v0, p0, Lcom/ies_net/artemis/ArtemisVideoView;->mTargetState:I

    :cond_0
    return-void
.end method
