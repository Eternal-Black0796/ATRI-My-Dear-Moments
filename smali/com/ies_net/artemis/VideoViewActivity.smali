.class public Lcom/ies_net/artemis/VideoViewActivity;
.super Landroid/app/Activity;
.source "VideoViewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private asset:Landroid/content/res/AssetFileDescriptor;

.field private file:Ljava/io/RandomAccessFile;

.field private pause:Z

.field private prepared:Z

.field private skip:I

.field private videoView:Lcom/ies_net/artemis/ArtemisVideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->pause:Z

    .line 188
    iput-boolean v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->prepared:Z

    .line 189
    iput v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->skip:I

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->videoView:Lcom/ies_net/artemis/ArtemisVideoView;

    .line 191
    iput-object v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->file:Ljava/io/RandomAccessFile;

    .line 192
    iput-object v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->asset:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    iget v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->skip:I

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 157
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 1

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0, v0}, Lcom/ies_net/artemis/VideoViewActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    .line 163
    :try_start_0
    iget-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->file:Ljava/io/RandomAccessFile;

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->file:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :catch_0
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, -0x1

    .line 172
    invoke-virtual {p0, v0, p1}, Lcom/ies_net/artemis/VideoViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/ies_net/artemis/VideoViewActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->pause:Z

    .line 30
    iput-boolean p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->prepared:Z

    .line 33
    invoke-virtual {p0}, Lcom/ies_net/artemis/VideoViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PATH"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OFFSET"

    .line 35
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "LENGTH"

    .line 36
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "VOLUME"

    .line 37
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "SKIP"

    .line 38
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->skip:I

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-gtz v3, :cond_0

    goto/16 :goto_1

    .line 48
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 p1, 0x11

    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {p1, v5, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcom/ies_net/artemis/VideoViewActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance p1, Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-direct {p1, p0}, Lcom/ies_net/artemis/ArtemisVideoView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->videoView:Lcom/ies_net/artemis/ArtemisVideoView;

    const/4 v5, 0x1

    .line 57
    invoke-virtual {p1, v5}, Lcom/ies_net/artemis/ArtemisVideoView;->setZOrderOnTop(Z)V

    .line 58
    iget-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->videoView:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->requestFocus()Z

    .line 60
    iget-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->videoView:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->videoView:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1, p0}, Lcom/ies_net/artemis/ArtemisVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 63
    iget-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->videoView:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1, p0}, Lcom/ies_net/artemis/ArtemisVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    const/4 p1, 0x0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 69
    iput-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->file:Ljava/io/RandomAccessFile;

    .line 72
    :cond_1
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->file:Ljava/io/RandomAccessFile;

    .line 74
    iget-object v5, p0, Lcom/ies_net/artemis/VideoViewActivity;->videoView:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    int-to-long v7, v2

    int-to-long v9, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/ies_net/artemis/ArtemisVideoView;->setVideoSource(Ljava/io/FileDescriptor;JJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->asset:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 82
    iput-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->asset:Landroid/content/res/AssetFileDescriptor;

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/ies_net/artemis/VideoViewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->asset:Landroid/content/res/AssetFileDescriptor;

    .line 87
    iget-object v5, p0, Lcom/ies_net/artemis/VideoViewActivity;->videoView:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    iget-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->asset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    int-to-long v7, v2

    add-long/2addr v7, v0

    int-to-long v9, v3

    move v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/ies_net/artemis/ArtemisVideoView;->setVideoSource(Ljava/io/FileDescriptor;JJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :catch_1
    :goto_0
    iget-object p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->videoView:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {p1}, Lcom/ies_net/artemis/ArtemisVideoView;->start()V

    return-void

    .line 42
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/ies_net/artemis/VideoViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lcom/ies_net/artemis/VideoViewActivity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->pause:Z

    .line 119
    iget-object v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->videoView:Lcom/ies_net/artemis/ArtemisVideoView;

    invoke-virtual {v0}, Lcom/ies_net/artemis/ArtemisVideoView;->pause()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    const/4 p1, 0x1

    .line 178
    iput-boolean p1, p0, Lcom/ies_net/artemis/VideoViewActivity;->prepared:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/ies_net/artemis/VideoViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->pause:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->pause:Z

    .line 107
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/ies_net/artemis/VideoViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/ies_net/artemis/VideoViewActivity;->finish()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->prepared:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->skip:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v2, 0x105

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    iget v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->skip:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/ies_net/artemis/VideoViewActivity;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_0

    .line 131
    :cond_2
    iget v0, p0, Lcom/ies_net/artemis/VideoViewActivity;->skip:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/ies_net/artemis/VideoViewActivity;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 139
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 125
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
